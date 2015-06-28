<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/fadeslideshow.js"></script>


<script type="text/javascript">

var mygallery=new fadeSlideShow({
	wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
	dimensions: [640, 196], //width/height of gallery in pixels. Should reflect dimensions of largest image
	imagearray: [
		["images/1.jpg"],
		["images/2.jpg"],
		["images/3.jpg"]
	//	["images/4.jpg"] //<--no trailing comma after very last image element!
	],
	displaymode: {type:'auto', pause:3500, cycles:0, wraparound:false},
	persist: false, //remember last viewed slide and recall within same session?
	fadeduration: 1000, //transition duration (milliseconds)
	descreveal: "ondemand",
	togglerid: ""
})


</script>

<title>mid page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<centre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div id="fadeshow1"></div></centre>
</body>
</html>
