window.onload = function() {
var newsData = '';
function getNewsData() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			newsData = JSON.parse(this.responseText);
			console.log(newsData.articles[0]);
      console.log("url to image:" + newsData.articles[0]['urlToImage']);
      var i = 0;
			var text = '';
			for (var i = 0; i < 4; i++) {
        link = newsData.articles[i]['url'];
        image = newsData.articles[i]['urlToImage'];
				text += "<p><b>Title:</b> " + newsData.articles[i]['title'] + " <b>Author:</b> " + newsData.articles[i]['author'] + " <b>Source:</b> " + newsData.articles[i]['source']['name'] + " <b>Description:</b> ";
        //there is no technical need to split up text into two parts, but atom doesn't color the text past ~300 chars
        text += newsData.articles[i]['description'] + " <b>Content:</b> " +  newsData.articles[i]['content'] + " <a href=" + link + ">Link</a>" + "</p>"; /*+ "<img src="+ image + + " alt='Follow link for images'>"*/
			}
				document.getElementById("dataDisplayContainer").innerHTML = text;
		}
	};

	xhttp.open("GET", "https://newsapi.org/v2/everything?q=climate_change&from=2018-08-19&sortBy=publishedAt&apiKey=c71e9cd76635457fbf224a4e47c9603f");
	// xhttp.open("GET", "https://newsapi.org/v2/everything?q=bitcoin&from=2018-08-19&sortBy=publishedAt&apiKey=c71e9cd76635457fbf224a4e47c9603f");
	xhttp.send();
}
}
