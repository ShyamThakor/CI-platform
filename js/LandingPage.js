// function showList(e) {
//     var $gridCont = $(".grid-container");
//     e.preventDefault();
//     $gridCont.hasClass("list-view")
//       ? $gridCont.removeClass("list-view")
//       : $gridCont.addClass("list-view");
//   }
//   function gridList(e) {
//     var $gridCont = $(".grid-container");
//     e.preventDefault();
//     $gridCont.removeClass("list-view");
//   }

//   $(document).on("click", ".btn-grid", gridList);
//   $(document).on("click", ".btn-list", showList);


function listView() {

  var select = document.getElementById("list-grid-select");
  select.classList.remove("grid");
  select.classList.add("list");

  var element = document.getElementsByClassName("card-element");
  console.log(element);
  for (var i = 0; i < element.length; i++) {
      element[i].classList.remove("col-lg-6", "col-xl-4");
      element[i].classList.add("col-lg-12", "col-xl-12");
  }
}
function gridView() {
  var select = document.getElementsByClassName("card-element");
  console.log(select);

  var select = document.getElementById("list-grid-select");
  select.classList.remove("list");
  select.classList.add("grid");

  var element = document.getElementsByClassName("card-element");
  console.log(element);
  for (var i = 0; i < element.length; i++) {
      element[i].classList.remove("col-lg-12", "col-xl-12");
      element[i].classList.add("col-lg-6", "col-xl-4");
  }

}

function CheckBoxListener() {  
  var Afghanistan = document.getElementById("Afghanistan");  
  var Albania = document.getElementById("Albania");  
  var Algeria = document.getElementById("Algeria");  
  var Barbados = document.getElementById("Barbados");  
  var Belarus = document.getElementById("Belarus");  


  const Country = []

  if (Afghanistan.checked){  
    var y = document.getElementById("Afghanistan").value;  
    return document.getElementById("FilterDiv").innerHTML = y; 
   
   
  }  
  else if (Albania.checked == true){  
    var y = document.getElementById("Albania").value;  
    return document.getElementById("FilterDiv").innerHTML = y; 
    
  }   
  else if (Algeria.checked == true){  
    var n = document.getElementById("Algeria").value;  
    return document.getElementById("FilterDiv").innerHTML = n; 
    
  }  
  else if (Barbados.checked == true){  
    var n = document.getElementById("Barbados").value;  
    Country.push(y)
    
  }  
  else if (Belarus.checked == true){  
    var n = document.getElementById("Belarus").value;  
    Country.push(y)
    
  }  
  JSON.stringify(Country, null, 2);
  

} 


