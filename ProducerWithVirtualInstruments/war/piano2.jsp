<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Piano Virtual</title>
  
	<meta name="rating" content="General" />
	<meta name="author" content="Mihail Ilinov - more at http://mihail.ilinov.eu/"/>
	<meta name="owner" content="Mihail Ilinov" />
	<meta name="copyright" content="Mihail Ilinov" />
	<meta name="cache-control" content="no-cache" />
	
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<meta name="robots" content="index,follow" />
	<meta name="revisit-after" content="1 days" />
	<meta name="msnbot" content="index,follow" />
	<meta name="googlebot" content="revisit-after 1 day" />
	<meta name="area" content="Web HTML5 Experimental Piano Audio">
	
	<meta name="allow-search" content="yes">
	<meta name="subject" content="HTML5 Piano">
	<meta name="abstract" content="HTML5 Piano">
	
	<meta name="country" content="Bulgaria">
	<meta name="creation date" content="February 2011"/>
	<meta name="catalogue" content="Mihail Ilinov pages">
	<meta name="description" content="HTML5 Piano is free web application developed with HTML5, CSS3 and JavaScript. HTML5 Piano is experimental project with one main goal - fun of playing piano on the web and testing the browsers performance. HTML5 Piano is free to use and fork. " />
		
	<meta name="keywords" content="HTML5 Piano, html piano, css3 piano, html css3 piano, web piano, free web piano, free piano, javascript piano, audio tag, html audio, jquery piano">
	  
  <link rel="stylesheet" type="text/css" href="css/main.css" />
  
  <script src="https://www.google.com/jsapi?key=ABQIAAAAM5WRXPMrqYvX6b4Xb7EZpxSeEWdgYc2hJ2roZCm3pKElCbTU5BSm-LvChjUku9yw6i8tI0Srj_P91w" type="text/javascript"></script>
  <script type="text/javascript">
  	google.load("jquery", "1.5.0");
	</script>
  <script src="js/jquery.hotkeys.js"></script>
  <script src="js/keyObjects.js"></script>
  <script src="js/main.js"></script>
</head>
<body>
	<!--[if IE]>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1/CFInstall.min.js"></script>
  <style>
   /* 
    CSS rules to use for styling the overlay:
      .chromeFrameOverlayContent
      .chromeFrameOverlayContent iframe
      .chromeFrameOverlayCloseBar
      .chromeFrameOverlayUnderlay
   */
  </style> 
  <script>
   // You may want to place these lines inside an onload handler
   CFInstall.check({
     mode: "overlay",
     destination: "http://www.waikiki.com"
   });
  </script>
  <![endif]-->
	<nav class="left">
		<h1>PIANO VIRTUAL EPIS</h1>
		<span id="toggleKeyNames">Toggle piano key names On/Off</span>
		<span id="toggleKeyboardKeysNames">Toggle keyboard key names On/Off</span>
	</nav>
	<nav class="right">
	<a id="Octaves" style="float: right;">Octaves</a><br />
	<a id="switchLight" style="float: right;">Switch the light</a>
	</nav>
	<div id="piano">
		<div id="pianoBody">
			<div id="littleRedLine"></div>
			<div id="o00" class="octave">
				<div id="00A" class="key white"><div class="keyname">A</div></div>
				<div id="00B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="00As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o0" class="octave">
				<div id="0C" class="key white" ><div class="keyname">C</div><div class="oN">1</div></div>
				<div id="0D" class="key white"><div class="keyname">D</div></div>
				<div id="0E" class="key white"><div class="keyname">E</div></div>
				<div id="0F" class="key white"><div class="keyname">F</div></div>
				<div id="0G" class="key white"><div class="keyname">G</div></div>
				<div id="0A" class="key white"><div class="keyname">A</div></div>
				<div id="0B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="0Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="0Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="0Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="0Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="0As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o1" class="octave">
				<div id="1C" class="key white" ><div class="keyname">C</div><div class="oN">2</div></div>
				<div id="1D" class="key white"><div class="keyname">D</div></div>
				<div id="1E" class="key white"><div class="keyname">E</div></div>
				<div id="1F" class="key white"><div class="keyname">F</div></div>
				<div id="1G" class="key white"><div class="keyname">G</div></div>
				<div id="1A" class="key white"><div class="keyname">A</div></div>
				<div id="1B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="1Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="1Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="1Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="1Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="1As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o2" class="octave">
				<div id="2C" class="key white" ><div class="keyname">C</div><div class="oN">3</div></div>
				<div id="2D" class="key white"><div class="keyname">D</div></div>
				<div id="2E" class="key white"><div class="keyname">E</div></div>
				<div id="2F" class="key white"><div class="keyname">F</div></div>
				<div id="2G" class="key white"><div class="keyname">G</div></div>
				<div id="2A" class="key white"><div class="keyname">A</div></div>
				<div id="2B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="2Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="2Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="2Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="2Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="2As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o3" class="octave">
				<a id="middleC">
				<div id="3C" class="key white" ><div class="keyname">C</div><div class="oN">4</div></div>
				<div id="3D" class="key white"><div class="keyname">D</div></div>
				<div id="3E" class="key white"><div class="keyname">E</div></div>
				<div id="3F" class="key white"><div class="keyname">F</div></div>
				<div id="3G" class="key white"><div class="keyname">G</div></div>
				<div id="3A" class="key white"><div class="keyname">A</div></div>
				<div id="3B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="3Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="3Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="3Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="3Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="3As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o4" class="octave">
				<div id="4C" class="key white" ><div class="keyname">C</div><div class="oN">5</div></div>
				<div id="4D" class="key white"><div class="keyname">D</div></div>
				<div id="4E" class="key white"><div class="keyname">E</div></div>
				<div id="4F" class="key white"><div class="keyname">F</div></div>
				<div id="4G" class="key white"><div class="keyname">G</div></div>
				<div id="4A" class="key white"><div class="keyname">A</div></div>
				<div id="4B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="4Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="4Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="4Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="4Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="4As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o5" class="octave">
				<div id="5C" class="key white" ><div class="keyname">C</div><div class="oN">6</div></div>
				<div id="5D" class="key white"><div class="keyname">D</div></div>
				<div id="5E" class="key white"><div class="keyname">E</div></div>
				<div id="5F" class="key white"><div class="keyname">F</div></div>
				<div id="5G" class="key white"><div class="keyname">G</div></div>
				<div id="5A" class="key white"><div class="keyname">A</div></div>
				<div id="5B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="5Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="5Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="5Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="5Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="5As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o6" class="octave">
				<div id="6C" class="key white" ><div class="keyname">C</div><div class="oN">7</div></div>
				<div id="6D" class="key white"><div class="keyname">D</div></div>
				<div id="6E" class="key white"><div class="keyname">E</div></div>
				<div id="6F" class="key white"><div class="keyname">F</div></div>
				<div id="6G" class="key white"><div class="keyname">G</div></div>
				<div id="6A" class="key white"><div class="keyname">A</div></div>
				<div id="6B" class="key white"><div class="keyname">B</div></div>
				<div class="flats">
					<div id="6Cs" class="key black"><div class="keyname">C# == Db</div></div>
					<div id="6Ds" class="key black"><div class="keyname">D# == Eb</div></div>
					<div id="6Fs" class="key black"><div class="keyname">F# == Gb</div></div>
					<div id="6Gs" class="key black"><div class="keyname">G# == Ab</div></div>
					<div id="6As" class="key black"><div class="keyname">A# == Bb</div></div>
				</div>
			</div>
			<div id="o7" class="octave">
				<div id="7C" class="key white" ><div class="keyname">C</div><div class="oN">8</div></div>
			</div>
		</div>
	</div>
	<!-- AudioFiles Section http://pianosounds.pixelass.com/tones/grand-piano/ -->
	<div id="pianoStrings">
		<audio id="tone-00A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/00A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/00A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-00As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/00As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/00As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-00B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/00B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/00B.mp3" type="audio/mpeg"></source>
		</audio>				
		<audio id="tone-0C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-0B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/0B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-1B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/1B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-2B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/2B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-3B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/3B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-4B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/4B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-5B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/5B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6C.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6Cs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Cs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Cs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6D" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6D.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6D.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6Ds" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Ds.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Ds.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6E" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6E.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6E.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6F" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6F.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6F.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6Fs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Fs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Fs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6G" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6G.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6G.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6Gs" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Gs.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6Gs.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6A" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6A.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6A.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6As" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6As.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6As.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-6B" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6B.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/6B.mp3" type="audio/mpeg"></source>
		</audio>
		<audio id="tone-7C" preload="auto" controls>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/7C.ogg" type="audio/ogg"></source>
			<source src="http://pianosounds.pixelass.com/tones/grand-piano/7C.mp3" type="audio/mpeg"></source>
		</audio>
	</div>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-21333207-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>
