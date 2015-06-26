<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Piano B�sico</title>
        <meta name="description" content="A synth piano synth that generates all of its audio files dynamically using JavaScript and data URIs. Choose from a variety of sounds styles and play with the looper, visual waveforms, and more." />
        <link rel="stylesheet" type="text/css" href="piano.css" />
        <meta property="og:image" content="img/piano-visual-mode.png">
        <link rel="image_src" href="img/piano-visual-mode.png" />
    </head>
    <input type=image src="../../img/portada.png" width="100%" height="30%">
    <body>
    <h1>Piano B�sico</h1>
    
        <div id="content">
            <div id="content-inner">
                <div id="piano">
                    <h1>Javascript Piano</h1>
                    <div class="help show" tabindex="1">
                        <div class="help-inner">
                            <div id="synth-settings"></div>
                            <div class="opts">
                                <p><strong>Controls:</strong></p>
                                <p>play using home row &amp; above &nbsp; /</p>
                                <p>change playable keys: “,” &amp; “.” &nbsp; /</p>
                                <p>shift keyboard: ← &amp; → <span id="shift"></span></p>
                            </div>
                            <div class="opts">
                                <p><strong>Extras:</strong></p>
                                <p class="toggle-color toggle hold">Color - c &nbsp; /</p>
                                <p class="toggle-demo toggle">Demo - m &nbsp; /</p>
                                <p class="toggle-animate toggle">Visual mode - 8 &nbsp; /</p>
                                <p class="toggle-looper">Looper - 9 &nbsp; /</p>
                                <p>Help - 0</p>
                            </div>
                        </div>
                    </div>
                    <div class="loop" tabindex="2">loop</div>
                </div>
            </div>
        </div>
           
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="../../platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </div>
        <script src="jquery-1.7.1.min.js"></script>
        <script src="audio.js"></script>
        <script src="piano.js"></script>


<script type="text/javascript">
var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-4202460-2']); _gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = '../../www.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
    </body>

<!-- Mirrored from mrcoles.com/piano/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 26 Jun 2015 00:54:44 GMT -->
</html>
