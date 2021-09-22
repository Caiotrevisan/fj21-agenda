<%@	page import="br.com.caelum.agenda.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	</head>
<body>
	<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<c:import	url="cabecalho.jsp"	/>
	
	<!--  cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

	<table>
		<!--  percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				
				<!-- lógica do email -->
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}"> ${contato.email}</a>
					</c:if> 
					<c:if test="${empty	contato.email}">
										E-mail	não	informado
					</c:if></td>
					
				<td>${contato.endereco}</td>
				<td><fmt:formatDate	value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy"	/></td>
						
				<td>
					<a href="mvc?logica=RemoveContatoLogica&id=${contato.id}"> Remover </a>
						
			</tr>
		</c:forEach>
	</table>
	<c:import	url="rodape.jsp" />

</body>
</html>