package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Repository
@Transactional
public class ProdutoDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	public void gravar(Produto produto) {
		em.persist(produto);
	}
	
	public List<Produto> listar() {
		//O problema de LazyInitialization também poderia ser resolvido se adicionassemos um novo filtro na classe ServletSpringMVC
		//No método getServletsFilters, o filtro seria: new OpenEntityManagerInViewFilter()
		//Porém, teríamos mais acessos ao banco, usando o join fetch, conseguímos buscar as informações com uma unica consulta
		return em.createQuery("select distinct(p) from Produto p join fetch p.precos", Produto.class).getResultList();
	}

	public Produto find(Integer id) {
		return em.createQuery("select distinct(p) from Produto p join fetch p.precos precos where p.id = :id", Produto.class)
				.setParameter("id", id)
				.getSingleResult();
	}
	
	public BigDecimal somaPrecosPorTipo(TipoPreco tipoPreco){
	    TypedQuery<BigDecimal> query = em.createQuery("select sum(preco.valor) from Produto p join p.precos preco where preco.tipo = :tipoPreco", BigDecimal.class);
	    query.setParameter("tipoPreco", tipoPreco);
	    return query.getSingleResult();
	}
	
}
