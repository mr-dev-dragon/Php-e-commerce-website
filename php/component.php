<?php


function cartElement($productimg, $productname, $productprice, $productid){
    $element = "
    
    <form action=\"cart.php?action=remove&id=$productid\" method=\"post\" class=\"cart-items\">
                    <div class=\"border mt-3  mb-5 rounded\">
                        <div class=\"row bg-white\">
                            <div class=\"col-md-3 pt-3\">
                                <img src=$productimg alt=\"Image1\" class=\"img-fluid\" >
                            </div>
                            <div class=\"col-md-6\">
                                <h6 class=\"pt-3\">$productname</h6>
                                <small class=\"text-secondary\">Seller: dailytuition</small>
                                <div class=\" d-flex\">
                                        <h5 class=\"pt-2 text-success \">$productprice $</h5>
                                    
                                        <button type=\"submit\" class=\"btn btn-danger \" name=\"remove\"  style=\"width: 100px;  \" >Remove</button>
                                </div>
                            </div>
                            <div class=\"col-md-3 py-5\">
                                <div class=\" d-flex\">
                                    <button type=\"button\" name=\"up\" class=\"btn  bg-light border rounded-circle\"><i class=\"fas fa-minus\"></i></button>
                                    <input type=\"text\" name=\"in\" value=\"1\" class=\"form-control w-50 d-inline\">
                                    <button type=\"button\" name=\"down\" class=\"btn bg-light border rounded-circle\"><i class=\"fas fa-plus\"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
    
    ";
    echo  $element;
      
  
}

















