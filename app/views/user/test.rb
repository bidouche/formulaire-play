
							VERSION FORM AVEC DES IMPUTS


<form action="create" method="POST">
  <input type="text" name="username" placeholder="Username">
  <input type="text" name="email" placeholder="email">
  <input type="text" name="bio" placeholder="bio">
  <input type="submit" value="Create">
  <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
</form>

<%= form_for @user, url: {action: "create"} do |f| %>
  <%= f.text_field :username%>
  <%= f.text_field :email%>
  <%= f.text_field :bio%>
  <%= f.submit "Create"%>
<% end %>



								VERSION FORM_TAG

<%= form_tag("create", method: :post, class: "col-md-6") do %>
    <div class="form-group col-md-12">
      <%= label_tag 'Votre nom' %>
      <%= text_field_tag 'username', nil, placeholder:'jean dupont', class: "form-control" %>
    </div>
    <div class="form-group col-md-12">
      <%= label_tag 'Votre email' %>
      <%= text_field_tag 'email', nil, placeholder:'jean.dupont@mail.com',class: "form-control"  %>
    </div>
    <div class="form-group col-md-12">
      <%= label_tag 'Votre Bio' %>
      <%= text_area_tag 'bio', nil, placeholder:'Quelques mots sur vous.', class: "form-control", rows: "3" %>
    </div>

      <div class="form-group col-md-12">
        <%= submit_tag "Valider", class: "btn btn-outline-success" %>
      </div>
      <% end %>

									OU

      <%= form_tag("create", method: :post) do %>
	  <%= label_tag 'Name' %></br>
      <%= text_field_tag 'username', nil, placeholder:'jean dupont'%></br>
      <%= label_tag 'Email' %></br>
      <%= text_field_tag 'email', nil, placeholder:'jean.dupont@mail.com'%></br>
      <%= label_tag 'Bio' %></br>
      <%= text_field_tag 'bio', nil, placeholder:'Tell me your life.'%></br>
	<%= submit_tag "Valider"%>
     <% end %>


										VERSION FORM_FOR


<%= form_for @user, url: {action: "create"}, html: {class: "col-md-6"} do |f| %>
        <div class="col-md-6">
          <div class="form-group">
            <%= f.label "Votre nom"%>
            <%= f.text_field :username, placeholder: 'jean dupont', class: "form-control" %>
          </div>

          <div class="form-group">
            <%= f.label "Votre email"%>
            <%= f.text_field :email, placeholder: 'jean.dupont@mail.com', class: "form-control"%>
          </div>
        </div>

      <div class="col-md-12 form-group">
        <%= f.label "Votre bio"%>
        <%= f.text_area :bio, size: "30x3", placeholder: 'Quelques mots sur vous', class: "form-control" %>
      </div>

      <div class="col-md-12 form-group">
        <%= f.submit "Valider", class: "btn btn-outline-success col-md-12" %>
      </div>
    <% end %>

