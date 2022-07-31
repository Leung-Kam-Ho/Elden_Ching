let minGap = 1;
let changed = false;

function sliderOne() {
    let slider1 = document.getElementById("lower");
    let slider2 = document.getElementById("upper");
    let display1 = document.getElementById("min");
    if (parseInt(slider1.value)*200 > 4000 & !changed) {
        filter();
        changed = true;
    }else if (parseInt(slider1.value)*200 < 4000 & changed) {
        filter2();
        changed = false;
    }
    if (parseInt(slider2.value) - parseInt(slider1.value) <= minGap) {
        slider1.value = parseInt(slider2.value) - minGap;
    }
    display1.innerHTML = parseInt(slider1.value) * 200;
}

function sliderTwo() {
    let slider1 = document.getElementById("lower");
    let slider2 = document.getElementById("upper");
    let display2 = document.getElementById("max");
    if (parseInt(slider2.value) - parseInt(slider1.value) <= minGap) {
        slider2.value = parseInt(slider1.value) + minGap;
    }
    display2.innerHTML = parseInt(slider2.value) * 200;
}

function filter() {
    document.getElementById("phone_2").style.animation = "fade_out 0.5s linear";
    setTimeout(next2, 500);
}

function filter2() {
    document.getElementById("phone_3").style.animation = "fade_out 0.5s linear";
    setTimeout(next, 500);
}

function search() {
    document.getElementById("phone_2").style.display = "none";
    document.getElementById("phone_3").style.display = "block";
    var final =
        "<div style='font-size:20px;'>We have found you the best fit !</div>" +
        "<button class='btn_final'onclick='detail()'> More detail </button>" + 
        "<button class='btn_final' onclick='reset1()' > I dont like it </button>";

    document.getElementsByClassName("pag_container")[0].style.animation =
        "fade_out 0.5s linear";
    document.getElementById("phone_3").style.animation = "move_r 0.5s linear";
    document.getElementById("phone_0").style.animation = "fade_out 0.5s linear";
    document.getElementById("phone_1").style.animation = "fade_out 0.5s linear";

    document.getElementsByClassName("q_box")[0].innerHTML = final;
    setTimeout(() => {
        document.getElementsByClassName("pag_container")[0].style.display =
            "none";
        document.getElementById("phone_0").style.display = "none";
        document.getElementById("phone_1").style.display = "none";
    }, 500);
    var reason_box =
        "<div class='reason_box'>" +
        "<div class='reason_head'> Why Iphone 12 ?</div>" +
        "<ul class='reason'> " +
        "<li>Fit your price range</li><li>Running IOS</li><li>Best camera quality in range</li>" +
        "<li>Light weight</li><li>Convenient AI system (SIRI)</li>" +
        "</ul></div>";
    document.getElementsByClassName("item_container")[0].innerHTML +=
        reason_box;
}

function cb_check(name, num) {
    var btn_yes = document.getElementById(name + "1");
    var btn_no = document.getElementById(name + "2");
    if ((num == 2) & (btn_no.checked == true)) {
        btn_yes.checked = false;
    } else if ((num == 1)  & (btn_yes.checked == true)) {
        btn_no.checked = false;
    }
}

function next() {
    document.getElementById("phone_3").style.display = "none";
    document.getElementById("phone_2").style.display = "block";
    document.getElementById("phone_2").style.animation = "fade_in 0.5s linear";
}

function next2() {
    document.getElementById("phone_2").style.display = "none";
    document.getElementById("phone_3").style.display = "block";
    document.getElementById("phone_3").style.animation = "fade_in 0.5s linear";
}

function reset1() {
    window.location.href = "/recommend";
}

function detail() {
    window.location.href = "/spec";
}

// function for collapsible bar
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.maxHeight) {
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }
    });
}

function close(q_b) {}

function open(q_b) {}

function testing() {
    alert("hi");
}
