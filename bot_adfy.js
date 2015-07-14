
document.getElementById('shrink_link').value ='www.tarad.com/product/';
console.log(document.getElementById('shrink_link').value)
setTimeout(function(){
  document.getElementById('shrink_submit').click();
},500);


var check = true;
  var ShortUrl= "";
setTimeout(function(){
console.log(document.getElementById('shrink_link').value)
while(check) {
  ShortUrl =getUrlshort();
  if(ShortUrl != "") {
   check = false;
    alert(ShortUrl);
  }
}
document.getElementById('shrink_another').click()
console.log(document.getElementById('shrink_link').value)
},6000);


function getUrlshort(){
  return document.getElementById('shrink_link').value;
}
var urlApi = "http://gameinw.in.th/api.php";
console.log(parseURLParams(urlApi));
console.log(urlApi);
function parseURLParams(url) {
    var queryStart = url.indexOf("?") + 1,
        queryEnd   = url.indexOf("#") + 1 || url.length + 1,
        query = url.slice(queryStart, queryEnd - 1),
        pairs = query.replace(/\+/g, " ").split("&"),
        parms = {}, i, n, v, nv;

    if (query === url || query === "") {
        return;
    }

    for (i = 0; i < pairs.length; i++) {
        nv = pairs[i].split("=");
        n = decodeURIComponent(nv[0]);
        v = decodeURIComponent(nv[1]);

        if (!parms.hasOwnProperty(n)) {
            parms[n] = [];
        }

        parms[n].push(nv.length === 2 ? v : null);
    }
    return parms;
}

//function getdataApi(){
 //var urlApi = "http://gameinw.in.th/api.php";
  //$.post(urlApi,{'data':'testdata'},function(response){
   //console.log(response);
  //},'jsonp');
//}


//setTimeout(function(){
//document.getElementById('shrink_link').value ="";
//console.log(document.getElementById('shrink_link').value;
//},1000);




