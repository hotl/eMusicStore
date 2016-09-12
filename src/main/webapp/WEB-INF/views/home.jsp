<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">'
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/resources/images/back1.jpg" />" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>I've Been Loving You Too Long (To Stop Now)</h1>
                    <p>&#34;His upbeat songs are great in their own right, but no one can do a sad, soulful
                        ballad quite like Otis Redding, and his impassioned vocals on “I’ve Been Loving
                        You Too Long (To Stop Now)” are absolutely unparalleled. It’s Otis doing what he
                        does best, pleading for a long-lost lover to return to him as the horns swell and
                        we all desperately scan the room for someone to slow-dance with.&#34;<br><br>Bonnie Stiernberg</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/resources/images/back2.jpg"/>" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>These Arms of Mine</h1>
                    <p>This classic track is one of the two songs Redding sang on his Stax audition.
                        Jim Stewart was so taken with &#34;These Arms of Mine&#34;, Redding was immediately
                        given a contract. It went on to become his first single, and one of his most
                        definitive tracks, which he wrote himself—a soulful, emotional ballad just
                        rough enough right around the edges.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="/resources/images/back3.jpg" />" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Try A Little Tenderness</h1>
                    <p>Before Kanye and Jay-Z ever took hold of it, <i>Try a Little Tenderness</i> always stood
                        out as the pinnacle of Redding’s short-lived body of work. Largely considered his best
                        song, it is deserving of that praise, slowly building from a ballad of sorts, with only
                        a few piano strokes and Redding’s soul-soaked warble, to a dancing imperative of a song
                        that captures your attention.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="col">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=instrument"/>"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/instruments.jpg"/>" alt="Instrument Image"
                width="140" height="140"/>
            </a>
            <h2>Instruments</h2>
        </div><!-- /.col-lg-4 -->
    </div>


    <div class="col">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=record"/>"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/vinyl.jpg"/>" alt="Instrument Image"
                     width="140" height="140"/>
            </a>
            <h2>Records</h2>
        </div>
    </div>

    <div class="col">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=accessory"/>"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/accessories.jpg"/>" alt="Instrument Image"
                     width="140" height="140"/>
            </a>
            <h2>Accessories</h2>
        </div><!-- /.col-lg-4 -->
    </div>

</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>