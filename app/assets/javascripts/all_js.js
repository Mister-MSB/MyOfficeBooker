//whoarewe
  function whoarewe(evt, useName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(useName).style.display = "block";
    evt.currentTarget.className += " active";

    var current = document.getElementsByClassName("active");
  }


//tabs create space
  function tabsspace(evt, useName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent_space");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks_space");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(useName).style.display = "block";
    evt.currentTarget.className += " active";

    var current = document.getElementsByClassName("active");
  }


//tabs my account
  function tabsaccount(evt, useName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent_account");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks_account");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(useName).style.display = "block";
    evt.currentTarget.className += " active";

    var current = document.getElementsByClassName("active");
  }
