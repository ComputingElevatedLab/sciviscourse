---
layout: default
permalink: /schedule/
title: Schedule
---

<style>
.card-text {
	padding-top: 5px;
}
.inline-headers h5, .inline-headers h6 {
  /*display: inline-block;*/
  vertical-align: middle;
  margin-bottom: 0rem;
}
.inline-headers-dayoff h5, .inline-headers-dayoff h6 {
  /*display: inline-block;*/
  vertical-align: middle;
  margin-bottom: 0rem;
  color:green;
  /*text-decoration: line-through;*/
}
.card-img {
	width: 150px;
	float: left;
	padding-right: 30px;
}
</style>
<img src="../images/2kbit1_0.jpg"/>
<div class="container">

  {% for class in site.data.schedule %}
  <div class="notice notice-success">
  	<div class="card">
  	  <div class="card-header">
          <div class="row ">
		      <div class="col-md-8 px-3">
		      	{% if class.image %}
		        <div class="col-md-4">
			           <img class="card-img" src="{{ class.image }}" >
		        </div>
		        {% endif %}
		      	{% if class.dayoff %}
		          <span class="inline-headers-dayoff">
		        {% else %}
		          <span class="inline-headers">
		        {% endif %}
		          <h6 class="card-subtitle mb-2 text-muted">{{ class.date }} &nbsp; </h6>
                  <h5 class="card-title">{{ class.name }}</h5>
                </span>
                {% if class.description %}
		          <p class="card-text">{{ class.description }}</p>
		        {% endif %}
		      </div>
	        </div>
	      </div>
      </div>
      
  </div>
  {% endfor %}

 <!-- <div class="card-group vgr-cards">
  	{% for class in site.data.schedule %}
    <div class="card">
      <div class="card-img-body">
      	{% if class.image %}
           <img class="card-img" width="200" src="{{ class.image }}" alt="Card image cap">
        {% endif %}
      </div>
      <div class="card-body">
        <h4 class="card-title">{{ class.name }}</h4>
        <h3 class="card-subtitle">{{ class.date }}</h3>
        {% if class.description %}
          <p class="card-text">{{ class.description}}</p>
        {% endif %}
      </div>
    </div>
    {% endfor %}
  </div> -->
</div>
