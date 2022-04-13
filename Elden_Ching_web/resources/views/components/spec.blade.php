<div style="height: 100%" id="phone_{{$choice}}">
    <div class="item">
        <div class="img_container">
            <img src="{{ asset($path[$choice])}}" alt="{{$path[$choice]}}">
        </div>
        <div class="spec">
            {{$name[$choice]}}
            <table class="spec_table">
                <tr>
                    <td>${{$price[$choice]}}</td>
                </tr>
                <tr>
                    <td>
                        @for ($i = 1; $i <= $camera[$choice]; $i++) 
                            @if ($i % 2==0) 
                                <i class="fa-solid fa-star"></i>
                            @endif
                        @endfor
                        @if ($camera[$choice] % 2 == 1)
                            <i class="fa-solid fa-star-half-stroke"></i>
                            @for ($i = 1; $i <= ((10 - $camera[$choice] ) -1 )/2; $i++) 
                                <i class="fa-regular fa-star"></i>
                            @endfor
                        @else
                            @for ($i = 1; $i <= (10 - ($camera[$choice]))/2; $i++) 
                                <i class="fa-regular fa-star"></i>
                            @endfor
                        @endif
                    </td>
                </tr>
                <tr>
                    <td>
                        @for ($i = 1; $i <= $battery[$choice]; $i++) 
                            @if ($i % 2==0) 
                                <i class="fa-solid fa-star"></i>
                            @endif
                        @endfor
                        @if ($battery[$choice] % 2 == 1)
                            <i class="fa-solid fa-star-half-stroke"></i>
                            @for ($i = 1; $i <= ((10 - $battery[$choice] ) -1 )/2; $i++) 
                                <i class="fa-regular fa-star"></i>
                            @endfor
                        @else
                            @for ($i = 1; $i <= (10 - ($battery[$choice]))/2; $i++) 
                                <i class="fa-regular fa-star"></i>
                            @endfor
                        @endif
                    </td>
                </tr>
                <tr>
                    <td>
                        @for ($i = 1; $i <= $rating[$choice]; $i++) 
                            @if ($i % 2==0) 
                                <i class="fa-solid fa-star"></i>
                            @endif
                        @endfor
                        @if ($rating[$choice] % 2 == 1)
                            <i class="fa-solid fa-star-half-stroke"></i>
                            @for ($i = 1; $i <= ((10 - $rating[$choice] ) -1 )/2; $i++) 
                                <i class="fa-regular fa-star"></i>
                            @endfor
                        @else
                            @for ($i = 1; $i <= (10 - ($rating[$choice]))/2; $i++) 
                                <i class="fa-regular fa-star"></i>
                            @endfor
                        @endif
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>