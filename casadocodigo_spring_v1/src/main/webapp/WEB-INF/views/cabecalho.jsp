<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<header id="layout-header">
	<div class="clearfix container">
		<a href="/" id="logo"> </a>
		<div id="header-content">
			<nav id="main-nav">

				<ul class="clearfix">
					<li><a href="${s:mvcUrl('PC#listar').build() }" rel="nofollow"> <s:message code="product.list"/> </a></li>
					<li><a href="${s:mvcUrl('PC#form').build() }" rel="nofollow"> <s:message code="product.registration"/></a></li>
					<li><a href="${s:mvcUrl('CCC#itens').build()}"> <s:message
								code="shoppingCart.title"
								arguments="${carrinhoCompras.quantidade}" />
					</a></li>
					<li><a href="?locale=pt" rel="nofollow"> <fmt:message
								key="menu.pt" />
					</a></li>

					<li><a href="?locale=en_US" rel="nofollow"> <fmt:message
								key="menu.en" />
					</a></li>

				</ul>
			</nav>
		</div>
	</div>
</header>
<nav class="categories-nav">
	<ul class="container">
		<li class="category"><a href="http://www.casadocodigo.com.br">Home</a></li>
		<li class="category"><a href="/collections/livros-de-agile">
				<s:message code="navigation.category.agile" />
		</a></li>
		<li class="category"><a href="/collections/livros-de-front-end"><s:message
					code="navigation.category.front" /></a></li>
		<li class="category"><a href="/collections/livros-de-games"><s:message
					code="navigation.category.games" /></a></li>
		<li class="category"><a href="/collections/livros-de-java"><s:message
					code="navigation.category.java" /></a></li>
		<li class="category"><a href="/collections/livros-de-mobile"><s:message
					code="navigation.category.mobile" /></a></li>
		<li class="category"><a
			href="/collections/livros-desenvolvimento-web"> <s:message
					code="navigation.category.web" />
		</a></li>
		<li class="category"><a href="/collections/outros"> <s:message
					code="navigation.category.others" />
		</a></li>
	</ul>
</nav>