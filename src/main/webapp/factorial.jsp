<%@ include file="navbar.jsp"%>
<div class="container pt-2 pb-5">
	<form class="container pt-2 pb-5" action="CalculateFactorialServlet"
		method="post">
		<fieldset>
			<legend class="mt-4">
				<strong>Enter a value for which you want to calculate the
					factorial</strong>
			</legend>
			<div class="form-group">
				<label class="col-form-label mt-4" for="factorial">Choose a
					value :</label> <input type="number" name="factorial" class="form-control"
					placeholder="Enter a numerical value" id="factorial" required>
			</div>
		</fieldset>
		<button type="submit" class="btn btn-success mt-4">Calculate</button>
	</form>
	<div class="container pt-2 pb-5">
		<% if (request.getAttribute("result") != null) { %>
		<div class="result-container">
			<h3>Result</h3>
			<p><%= request.getAttribute("result") %></p>
		</div>
		<% } else if (request.getAttribute("error") != null) { %>
		<div class="result-container">
			<p><%= request.getAttribute("error") %></p>
		</div>
		<% } %>
	</div>
</div>
