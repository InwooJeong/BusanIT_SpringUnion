<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- FOOTER -->
	<style>
       #ft{color:mediumpurple;}
    </style>
    
    <footer class="mt-2 py-3">
      <div class="container" style="background-image: url('/resources/images/footerbg.jpg'); background-size: cover">
        <div class="row py-2">
          <div class="col-12 col-md" >
            <i class="material-icons">tour</i>
            <small class="d-block mb-3 text-muted">&copy; 1992-2021</small>
			<small class="d-block mb-3 text-muted">
			<i class="material-icons align-middle">email</i>
			<a href="mailto:admin@bugi.com" class="align-middle">Contact by Email</a></small>
			<small class="d-block mb-3 text-muted">
			<i class="material-icons align-middle">phone_in_talk</i>
			<a href="tel:010-0000-0000" class="align-middle">Contact on Phone</a></small>
			<small class="d-block mb-3 text-muted">
			<i class="material-icons align-middle">location_on</i>
			<a href="/map" onclick="window.open(this.href, '_blank', 'width=700px, height=450px'); return false;" class="align-middle">찾아 오시는 길</a></small>
          </div>
          <div class="col-6 col-md">
            <h5 id="ft">Features</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-muted" href="#">Cool stuff</a></li>
              <li><a class="text-muted" href="#">Random feature</a></li>
              <li><a class="text-muted" href="#">Team feature</a></li>
              <li><a class="text-muted" href="#">Stuff for developers</a></li>
              <li><a class="text-muted" href="#">Another one</a></li>
              <li><a class="text-muted" href="#">Last time</a></li>
            </ul>
          </div>
          <div class="col-6 col-md">
            <h5 id="ft">Resources</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-muted" href="#">Resource</a></li>
              <li><a class="text-muted" href="#">Resource name</a></li>
              <li><a class="text-muted" href="#">Another resource</a></li>
              <li><a class="text-muted" href="#">Final resource</a></li>
            </ul>
          </div>
          <div class="col-6 col-md">
            <h5 id="ft">About</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-muted" href="#">Team</a></li>
              <li><a class="text-muted" href="#">Locations</a></li>
              <li><a class="text-muted" href="#">Privacy</a></li>
              <li><a class="text-muted" href="#">Terms</a></li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    <!-- end of FOOTER -->