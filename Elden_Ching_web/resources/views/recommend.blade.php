<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>  Recommendation</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/recommend.css') }}">
    <link rel="stylesheet" href="{{ asset('css/spec.css') }}">
</head>

<body>
    <div class="Header">
        <div class="content-white">MetaChoice</div>
        <div class="circ-pink"></div>
    </div>
    <div class="main_container">

        <div class="question">
            <header style="position: relative">
                Questions
                <i class="fa-regular fa-circle-question question_icon">
                    <div id="notice">
                        Answer our question to find your best fit
                    </div>
                </i>
            </header>
            <form class="q_box" action="javascript:void(0);">
                <div class="q">
                    {{-- First question --}}

                    <button class="collapsible">Price<i class="fa-solid fa-plus"></i> </button>
                    <div class="questions">
                        <p>
                            Select your price range
                        <div class="container">
                            <span id="min">0</span>
                            <div class="slider-track"></div>
                            <input type="range" min="0" max="100" value="0" id="lower" oninput="sliderOne()">
                            <input type="range" min="0" max="100" value="100" id="upper" oninput="sliderTwo()">
                            <span id="max">{{100*200}}</span>
                        </div>
                        </p>
                    </div>

                    {{-- Second question --}}
                    <button class="collapsible">Camera<i class="fa-solid fa-plus"></i> </button>
                    <div class="questions">
                        <p>
                            Do you have social media addiction?
                        <div class="choice_box">
                            <div class="choice_input">
                                <input type="checkbox" style="transform: scale(2.5)" id="default1"
                                    onclick="cb_check('default', 1)">
                                <label for="default1" style="padding-left: 1vw" id="ignore"> Yes</label>
                            </div>
                            <div class="choice_input">
                                <input type="checkbox" style="transform: scale(2.5)" id="default2"
                                    onclick="cb_check('default', 2)">
                                <label for="default2" style="padding-left: 1vw" id="ignore"> No</label>
                            </div>
                        </div>
                        </p>
                    </div>

                    {{-- Third question --}}
                    <button class="collapsible">Battery<i class="fa-solid fa-plus"></i></button>
                    <div class="questions">
                        <p>
                            Do you have a heavy usage outdoor?
                            <div class="choice_box">
                                <div class="choice_input">
                                    <input type="checkbox" style="transform: scale(2.5)" id="battery1"
                                        onclick="cb_check('battery', 1)">
                                    <label for="battery1" style="padding-left: 1vw" id="ignore"> Yes</label>
                                </div>
                                <div class="choice_input">
                                    <input type="checkbox" style="transform: scale(2.5)" id="battery2"
                                        onclick="cb_check('battery', 2)">
                                    <label for="battery2" style="padding-left: 1vw" id="ignore"> No</label>
                                </div>
                            </div>
                        </p>
                    </div>

                    {{-- Fourth question --}}
                    <button class="collapsible"> Usage <i class="fa-solid fa-plus"></i></button>
                    <div class="questions">
                        <p>
                            What is your biggest purpose using phone?
                            <div class="choice_box">
                                <div class="choice_input" style="display: block!important">
                                    <input type="checkbox" style="transform: scale(2.5)" id="usage1"
                                        onclick="cb_check('usage', 1)">
                                    <label for="usage1" style="padding-left: 1vw" id="ignore"> Gaming</label>
                                </div>
                                <div class="choice_input">
                                    <input type="checkbox" style="transform: scale(2.5)" id="usage2"
                                        onclick="cb_check('usage', 2)">
                                    <label for="usage2" style="padding-left: 1vw" id="ignore"> Watching Youtube, Netflix</label>
                                </div>
                            </div>
                        </p>
                    </div>

                    {{-- Fifth question --}}
                    <button class="collapsible"> Apprearance <i class="fa-solid fa-plus"></i></button>
                    <div class="questions">
                        <p>
                            Do you care about how your phone looks?
                            <div class="choice_box">
                                <div class="choice_input">
                                    <input type="checkbox" style="transform: scale(2.5)" id="appear1"
                                        onclick="cb_check('appear', 1)">
                                    <label for="appear1" style="padding-left: 1vw" id="ignore"> Yes</label>
                                </div>
                                <div class="choice_input">
                                    <input type="checkbox" style="transform: scale(2.5)" id="appear2"
                                        onclick="cb_check('appear', 2)">
                                    <label for="appear2" style="padding-left: 1vw" id="ignore"> No</label>
                                </div>
                            </div>
                        </p>
                    </div>


                </div>
                <div class="submit">
                    <input type="submit" class="btn btn-primary" value="Search" style="background-color: #1c203b;"
                        onclick="search()">
                </div>
            </form>
        </div>
        <div class="display">
            <div class="category">
                <table>
                    <tr>
                        <td>Price</td>
                    </tr>
                    <tr>
                        <td>Camera</td>
                    </tr>
                    <tr>
                        <td>Battery</td>
                    </tr>
                    <tr>
                        <td>Total rating</td>
                    </tr>
                </table>
            </div>
            <div class="item_container">
                @for ($x = 0; $x
                < 4; $x++) <x-spec num="{{$x}}" />
                @endfor
            </div>
            <div class="pag_container">
                <div class="pagination">
                    <a href="#">&laquo;</a>
                    <a class="active" href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">&raquo;</a>
                </div>
            </div>
        </div>
    </div>

    <a href="../"><i class="fa-solid fa-house fa-3x home"></i></a>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/ee8b5e9009.js" crossorigin="anonymous"></script>
    <script src="js/recommend.js"></script>
</body>

</html>