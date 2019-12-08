---
layout: default
permalink: /schedule/
title: Schedule
---

<style>
body {
  margin-top: 20px;
}

// Bootstrap resets
.card {
  border: none;
}
.card-img {
  border-radius: 0;
}

.card-text {
	padding-top: 5px;

}

.vgr-cards {
  .card {
    display: flex;
    flex-flow: wrap;
    flex: 100%;
    margin-bottom: 40px;

    &:nth-child(even) .card-img-body {
      order: 2;
    }

    &:nth-child(even) .card-body {
      padding-left: 0;
      padding-right: 1.25rem; 
    }
    
    @media (max-width: 576px) {
      display: block;
    }
    
  }

  .card-img-body {
    flex: 1;
    overflow: hidden;
    position: relative;
    
    @media (max-width: 576px) {
      width: 100%;
      height: 200px;
          margin-bottom: 20px;
    }
    
  }
  
  .card-img {
    width: 100%;
    height: auto;
    position: absolute;
    margin-left: 50%;
    transform: translateX(-50%);
    
    @media (max-width: 1140px) {
          margin: 0;
    transform: none;
    width: 100%;
    height: auto;
    }
    
  }

  .card-body {
    flex: 2;
    padding: 0 0 0 0rem;
    
    @media (max-width: 576px) {
      padding: 0;
    }
    
  }
}

.inline-headers h5, .inline-headers h6 {
  display: inline-block;
  vertical-align: baseline;
  margin-bottom: 0rem;
}
</style>

<div class="container">

  {% for class in site.data.schedule %}
  <div class="notice notice-success">
  	<div class="card">
  	  <div class="card-header">
        <span class="inline-headers">
          <h6 class="card-subtitle mb-2 text-muted">{{ class.date }} &nbsp; </h6>
          <h5 class="card-title">{{ class.name }}</h5></span>
      </div>
      <div class="row ">
        <div class="col-md-4">
            {% if class.image %}
	           <img class="card-img" width="200" src="{{ class.image }}" >
	        {% endif %}
        </div>
	      <div class="col-md-8 px-3">
	        <div class="card-block px-3">
		        {% if class.description %}
		          <p class="card-text">{{ class.description}}</p>
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
