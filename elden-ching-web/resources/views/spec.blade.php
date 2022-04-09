<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spec</title>
    <link rel="stylesheet" href="{{ asset('css/spec_blade.css') }}">
</head>

<body>
    <div class="Header">
        <div class="content-white">MetaChoice</div>
        <div class="circ-pink"></div>
    </div>
    <div class="container_master">
        <div class="container_1">
            <div class="scrolls">
                <img src="{{ url('/images/phone.png') }}" style="height:100%;width:auto;">
                <img src="{{ url('/images/computer.png') }}" style="height:100%;width:auto;">
                <img src="{{ url('/images/computer.png') }}" style="height:100%;width:auto;">
            </div>
        </div>
        <div class="container_2">
            <div class="price_trend">

                <img src="{{ url('/images/price_trend.png') }}" style="height:auto;width:100%;float:right">

            </div>
            <div class="container_spec">
                <div class="gfg">
                    <h1>Specification</h1>
                    <p>OS：iOS</p>
                    <p>CPU :A15</p>
                    <p>Display :6.1吋</p>
                    <p>Resolution :2532 x 1170</p>
                    <p>Ram :6GB</p>
                    <p>Storage :128GB</p>
                    <p>Charing :20W</p>
                    <p>Weight :173g</p>
                    <p>Anti-dust :IP68</p>
                </div>
            </div>
        </div>
        <div class="container_3">
            <h1 style="text-align: center">Rating</h1>
            <img src="{{ url('/images/rating.png') }}" style="height:90%;width:100%;float:right">
        </div>
        <div class="container_4">

            <img src="{{ url('/images/comparison.png') }}" style="height:auto;width:100%;">

        </div>
    </div>
    <script>
        $(document).ready(function() {
            $("#cf7_controls").on('click', 'span', function() {
                $("#cf7 img").removeClass("opaque");

                var newImage = $(this).index();

                $("#cf7 img").eq(newImage).addClass("opaque");

                $("#cf7_controls span").removeClass("selected");
                $(this).addClass("selected");
            });
        });
    </script>
</body>

</html>
