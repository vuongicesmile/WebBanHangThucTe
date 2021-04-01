<?php

namespace App\Components;

use App\Menu;

class MenuRecursive {
    private $html;
    public function __construct() {
        $this->html ='';
    }

    public function menuRecursiveAdd($parentId=0,$subMark='') {
        $data = Menu::where('parent_id',$parentId)->get();
        foreach ($data as $dataItems) {
            $this->html .= '<option value="'.$dataItems->id.'">'.$subMark.$dataItems->name.'</option>';
            $this->menuRecursiveAdd($dataItems->id,$subMark.'--');
        }
        return $this->html;
    }

    public function menuRecursiveEdit($parentIdMenuEdit,$parentId=0,$subMark='') {
        $data = Menu::where('parent_id',$parentId)->get();
        foreach ($data as $dataItems) {
            if($parentIdMenuEdit == $dataItems->id) {

                $this->html .= '<option selected value="'.$dataItems->id.'">'.$subMark.$dataItems->name.'</option>';

            }else {

                $this->html .= '<option value="'.$dataItems->id.'">'.$subMark.$dataItems->name.'</option>';

            }
            $this->menuRecursiveEdit($parentIdMenuEdit,$dataItems->id,$subMark.'--');
        }
        return $this->html;
    }
}
