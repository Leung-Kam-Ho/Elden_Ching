<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spec</title>
    <link rel="stylesheet" href="{{ asset('css/spec_blade.css') }}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
</head>

<body>
    <div class="Header">
        <div class="content-white">MetaChoice</div>
        <div class="circ-pink"></div>
    </div>
    <div class="container_master">
        <div class="container_column">
            <div class="spacing"></div>
            <div class="phone">
                <img src="{{url('/img/iphone13.png')}}" alt="iphone image" height="100%">
            </div>
            <div class="spec">
                <h1>Specification</h1>
                <table>
                    <tr>
                        <td>OS：</td>
                        <td>iOS</td>
                    </tr>
                    <tr>
                        <td>CPU :</td>
                        <td>A15</td>
                    </tr>
                    <tr>
                        <td>Display :</td>
                        <td>6.1吋</td>
                    </tr>
                    <tr>
                        <td>Resolution :</td>
                        <td>2532 x 1170</td>
                    </tr>
                    <tr>
                        <td>Ram :</td>
                        <td>6GB</td>
                    </tr>
                    <tr>
                        <td>Storage :</td>
                        <td>128GB</td>
                    </tr>
                    <tr>
                        <td>Charing :</td>
                        <td>20W</td>
                    </tr>
                    <tr>
                        <td>Weight :</td>
                        <td>173g</td>
                    </tr>
                    <tr>
                        <td>Anti-dust :</td>
                        <td>IP68</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="container_column">
            <div class="spacing"></div>
            <div class="spec_detail"><img src="{{ url('/img/price_trend.jpeg') }}" alt="price trend" width="85%"></div>
            <div class="spec_detail" style="height: 20%">
                <div style="font-size: 25px;"><b>Ratings</b></div>
                <img src="{{ url('/img/rating.jpeg') }}" alt="price trend" width="75%">
            </div>
            <div class="spec_detail" style="height: 30%">
                <div style="font-size: 25px;"><b>Comparison</b></div>
                <img src="{{ url('/img/comparison.jpeg') }}" width="75%">
            </div>
        </div>
        <div class="container_column">
            <div class="spacing"></div>
            <div class="comment">
                <u style="font-size:50px">Reviews</u>
                <div class="reviews">
                    <i class="fa-regular fa-circle-user fa-2x"></i>
                    <u style="font-size:20px;margin-left:10px">User17835</u>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <div class="comments">
                        Actually, I think this phone is a bit overrated
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-regular fa-circle-user fa-2x"></i>
                    <u style="font-size:20px;margin-left:10px">User14235</u>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star-half-stroke"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <div class="comments">
                        The price is a bit high, but I think it's worth the price
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-regular fa-circle-user fa-2x"></i>
                    <u style="font-size:20px;margin-left:10px">User69235</u>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star-half-stroke"></i>
                    </div>
                    <div class="comments">
                        Best phone I have even used
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-regular fa-circle-user fa-2x"></i>
                    <u style="font-size:20px;margin-left:10px">User14777</u>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star-half-stroke"></i>
                    </div>
                    <div class="comments">
                        Good looking, convenient AI (that is SIRI lol)
                    </div>
                </div>
                <div class="reviews">
                    <i class="fa-regular fa-circle-user fa-2x"></i>
                    <u style="font-size:20px;margin-left:10px">User76335</u>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <div class="comments">
                        Just so so
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/ee8b5e9009.js" crossorigin="anonymous"></script>
</body>

</html>