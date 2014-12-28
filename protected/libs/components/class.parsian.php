<?php
include("nusoap/nusoap.php");
    class parsian
    {
        /*      public static function parsianArray($pin = 'Sy4Eeu76Ba0w2u6X4eLk'
        ,$amount
        ,$orderId
        ,$callbackUrl= "http://barnamenevis.biz:83/HivaPay/bankReturn.php?payLogID="
        , $authority ='0', $status ='0')
        {

        return get_defined_vars();



        }*/
        public static function getPaymentRequest($amount, $orderId)
        {
            $webServiceClient = new nusoap_client('https://www.pec24.com/pecpaymentgateway/eshopservice.asmx?wsdl', 'wsdl');
            $parameters['parameters']['pin'] = "Sy4Eeu76Ba0w2u6X4eLk";
            $parameters['parameters']['amount'] = "$amount";
            $parameters['parameters']['orderId'] = "$orderId";
            $parameters['parameters']['callbackUrl'] = "http://barnamenevis.biz:83/HivaPay/bankReturn.php?payLogID=$orderId";
            $parameters['parameters']['authority'] = "0";
            $parameters['parameters']['status'] = "0";
            $webServiceClient = new nusoap_client('https://www.pec24.com/pecpaymentgateway/eshopservice.asmx?wsdl', 'wsdl');
            $result = $webServiceClient->call("PinPaymentRequest", $parameters);
            if($error = $webServiceClient->getError()){ return "Error: $error";}

            return $result;
            //$url = "https://www.pec24.com/pecpaymentgateway/?au=" . $result['authority'];
            //header('location: ' . $url);


        }
    }
?>
