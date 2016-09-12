<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
       <div class="page-header">
           <h1>About Me</h1>
       </div>

        <div class="container row">
           Hi! My name is Tim, and I am a practicing Software Engineer. I developed this website
           using the Java Spring Framework (MVC, Data, Security, & WebFlow), along with Hibernate, JPA, H2
               Database Engine, JSP/JSTL, Bootstrap, and AngularJS.
        </div>
               <br>
        <div class="container row">
           The purpose of this project was purely educational, as I wanted to strengthen my
           grasp on not only the technologies involved, but on Web Development as a whole. I began by picking
               a Bootstrap template to use as my front-end view, and arranging Controllers to redirect to my
               newly created .jsp view pages. It was during this step that I had my first taste of the
               MVC software architectural pattern. From there, I created domain classes to model business entities
               and introduced Hibernate and JPA to persist my Java objects to my database.
        </div>
                <br>
        <div class="container row">
               I then developed a REST service API to handle various operations, with an AngularJS controller
               to consume the API. Finally, using the Spring WebFlow, I developed a flow-oriented web process
               to handle the checkout operation.

               Thanks for checking out my project!
        </div>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>