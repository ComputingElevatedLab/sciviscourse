---
layout: default
permalink: /schedule/
title: Schedule
---

<style>
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
.myrow {
  padding-top: 15px;
  vertical-align: middle;
}
</style>

<img src="../images/2kbit1_0.jpg"/>

<div class="row col-12 mt-4">
  <div class="col-12 mb-1">
    {% for class in site.data.schedule %}
    <div class="row col-12 mb-3 float-sm-left border-top myrow">
      <div class="float-sm-left col-12 col-sm-2">
        {% if class.image %}
        <img class="mx-auto img-thumbnail" src="{{class.image}}">
        {% endif %}
      </div>
      <div class="col-sm-10 col-12 text-center text-sm-left">
        {% if class.dayoff %}
          <span class="inline-headers-dayoff">
        {% else %}
          <span class="inline-headers">
        {% endif %}
          <h5><b>{{ class.name }}</b></h5>
        {{ class.date }}
          </span>
        <br/>
        {% if class.description %}
        <p>{{ class.description }}</p>
        {% endif %}
      </div>
    </div>
    {% endfor %}
  </div>
</div>