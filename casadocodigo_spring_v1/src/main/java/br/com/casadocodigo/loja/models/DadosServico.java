package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

public class DadosServico {

	private BigDecimal value;

    public DadosServico(BigDecimal value) {
        this.value = value;
    }

    public DadosServico() {
    }

    public BigDecimal getValue() {
        return value;
    }
	
}
