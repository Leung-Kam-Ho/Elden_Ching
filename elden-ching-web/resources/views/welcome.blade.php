<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>MetaChoice</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="../css/style.css">
</head>

<body translate="no">
    <div class="Wrapper">
        <div class="Header">
            <div class="content-white">MetaChoice</div>
            <div class="circ-pink"></div>
        </div>
        <div class="Content">
            {{-- <div class="instruction" >
                <br>
                <span style="font-family:  Sen, sans-serif;font-size: 5vmin">What are you looking for ?</span>
            </div> --}}
            <div class="search-bar">
                <input type="search" name="search" pattern=".*\S.*" placeholder="What are you looking for ?" required >
                <button class="search-btn" type="button">
                    <span>Search</span>
                </button>

            </div>
            <div class="expandcontent" id="hi">
                <main class="grid">
                    <div class="img-container">
                        <img src="{{ url('/images/computer.png') }}" class="image">
                        <a href="{{ '/phone' }}">
                            <div class="overlay">
                                <div class="text">Computer</div>
                            </div>
                        </a>
                    </div>
                    <div class="img-container">
                        <img src="{{ url('/images/phone.png') }}" class="image">
                        <a href="{{ '/phone' }}">
                            <div class="overlay">
                                <div class="text">Mobile Phone</div>
                            </div>
                        </a>
                    </div>
                    <div class="img-container">
                        <img src="{{ url('/images/mouse.png') }}" class="image">
                        <a href="{{ '/phone' }}">
                            <div class="overlay">
                                <div class="text">Mouse</div>
                            </div>
                        </a>
                    </div>
                    <div class="img-container">
                        <img src="{{ url('/images/TV.png') }}" class="image">
                        <a href="{{ '/phone' }}">
                            <div class="overlay">
                                <div class="text">TV</div>
                            </div>
                        </a>
                    </div>
                </main>
            </div>
        </div>
    </div>


    <script>
        var coll = document.getElementsByClassName("search-btn");
        var i;
        for (i = 0; i < coll.length; i++) {
            coll[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var content = document.getElementById('hi');
                if (content.style.maxHeight) {
                    content.style.maxHeight = null;
                } else {
                    content.style.maxHeight = content.scrollHeight + "px";
                }
                
            });
        }
    </script>
</body>


</html>
