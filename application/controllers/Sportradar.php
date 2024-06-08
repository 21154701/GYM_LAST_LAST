<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sportradar extends CI_Controller {

    public function get_data()
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://serper.dev/api-key?api_key=d02e5ae87c34d4257025849a2b496457026ee346",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "cache-control: no-cache"
          ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
          echo "cURL Error #:" . $err;
        } else {
          // Pass the response to a view
          $this->load->view('sportradar_view', ['data' => $response]);
        }
    }
}