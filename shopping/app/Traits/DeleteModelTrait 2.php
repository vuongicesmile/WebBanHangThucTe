<?php

namespace App\Traits;

use Illuminate\Support\Facades\Log;

trait DeleteModelTrait {

    public function deleteModelTrait($id,$model): \Illuminate\Http\JsonResponse
    {
        try {
            $model->find($id)->delete();
            return response()->json([
                'code' =>200,
                'message' =>'sucess'
            ],200);

        } catch(\Exception $exception) {
            Log::error('Message'.$exception->getMessage().'---Line :'.$exception->getLine());
            return response()->json([
                'code' =>500,
                'message' =>'fail'
            ],500);
        }
    }
}
