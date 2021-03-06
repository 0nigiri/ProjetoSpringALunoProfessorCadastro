<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Lista Aluno</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/mostrarLista.css">
<script type="text/javascript" src="resources/js/jquery.js"></script>

</head>

<body>

	<!-- DADOS PESSOAIS-->
	<fieldset>
		<legend>
			<h3>Cadastrar novo aluno</h3>
		</legend>
		<table cellspacing="10">

			<!-- Nome-->

			<tr>

				<td><label for="nome">Nome: </label></td>

				<td align="left"><input type="text" name="nome"></td>


			</tr>

			<!-- Data de nascimento-->

			<tr>
				<td><label>Data de Nascimento: </label></td>
				<td align="left"><input type="date" id="dataNascimento"
					name="Nascimento" value="DD-MM-AAAA" min="1900-01-01"
					max="2018-12-31" /></td>
			</tr>

			<!-- CPF -->

			<tr>
				<td><label>CPF:</label></td>
				<td align="left"><input type="text" name="cpf" size="9"
					maxlength="9"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57">
					- <input type="text" name="cpf2" size="2" maxlength="2"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57">
				</td>
			</tr>

			<!-- Telefone -->

			<tr>
				<td><label>Telefone:</label></td>
				<td align="left"><input type="text" name="telefone" size="3"
					maxlength="3"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57">
					- <input type="text" name="telefone2" size="9" maxlength="9"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57">
				</td>
			</tr>

			<!-- Email-->

			<tr>

				<td><label for="email">Email: </label></td>

				<td align="left"><input type="text" name="email"></td>


			</tr>
			
				<!-- Endereco-->

			<tr>

				<td><label for="email">Enderešo: </label></td>

				<td align="left"><input type="text" name="adress"></td>


			</tr>

			<!-- sexo-->

			<tr>
				<td><label for="sexo">Sexo:</label></td>
				<td align="left"><select name="sexo">
						<option value="null"></option>
						<option value="male">Masculino</option>
						<option value="female">Feminino</option>
						<option value="other">LGBTTQQFAGPBDSM+</option>


				</select></td>
			</tr>

			<!-- Curso-->

			<tr>
				<td><label for="curso">Curso:</label></td>
				<td align="left"><select name="curso">
						<option value="null">Cursos disponÝveis:</option>
						<option value="javaWeb">Java WEB</option>
						<option value="cobol">Cobol</option>
						<option value="net">.NET</option>
						<option value="redes">Redes</option>
						<option value="python">Python</option>

				</select></td>
			</tr>

		<!-- Botoes -->

			<tr>
				<td align="left">
					<input type="submit" value="Adicionar" id="verificador">
					 <input type="submit" value="Limpar" id="limpar">
				</td>
			</tr>


		</table>
	</fieldset>


	</form>


</body>
</html>