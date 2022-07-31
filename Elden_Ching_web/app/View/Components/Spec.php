<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Spec extends Component
{   

    /**
     * The content
     *
     * @var string 
     */
    public $path = ['img/iphone13.png','img/samsungA13.png','img/huaweiIDK.png','img/iphone13.png'];
    public $name = ['Iphone 13','Samsung A13', 'Huawei NOVA 9','Iphone 12'];
    public $price = ['9000','8000','4000', '7000'];
    public $OS = ['IOS','Android','HarmonyOS','IOS'];
    public $storage = ['128GB','512GB','64GB','64GB'];
    public $weight = ['140g','100g','150g','120g'];
    public $camera = ['9','8','7','6'];
    public $battery = ['7','7','8','9'];
    public $rating = ['8','7','6','8'];
    
    

     /**
     * The content
     *
     * @var integer
     */
    public $choice;
  


    /**
     * Create a new component instance.
     *
     * @param string $num
     * @return void
     */
    public function __construct($num)
    {
        $this->choice = $num;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.spec');
    }
}
