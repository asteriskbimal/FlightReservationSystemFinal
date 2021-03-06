<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="http://yandex.st/jquery-ui/1.8.15/themes/humanity/jquery.ui.all.min.css"
    media="screen" rel="stylesheet" type="text/css">

    <style>
    .ui-menu-item a{ 
        line-height: 1.2em !important; 
        padding: 2px 35px 2px 3px !important; 
        position: relative; 
    } 
    .avs_ac_name_iata span { 
        font-size: 12px; 
        margin-right: 5px; 
    } 
    .avs_ac_name_iata .avs_ac_iata { 
        position: absolute; 
        top: 5px; 
        right: 5px; 
    } 
    .avs_ac_name_iata .avs_ac_country { 
        font-size: 10px; 
        color: #777; 
    } 
    .avs_ac_name_iata .avs_ac_airport_name { 
        display: block; 
        font-size: 10px; 
        color: #777;
    } 
    </style>
    <title></title>
</head>
<body>
<h4>
 <form accept-charset="UTF-8" action="http://www.jetradar.com/searches/new" id="aviasales_search" 
    method="get" name="aviasales_search" target="_blank">
        <input name="utf8" type="hidden" value="✓">
        <input name="currency" type="hidden"> 
        <input id="marker" name="marker" type="hidden" value="affiliate-id"> 
        <input id="origin_iata" name="origin_iata" type="hidden" value=""> 
        <input id="destination_iata" name="destination_iata" type="hidden" value=""> 
        <input id="is_show_hotels" name="show_hotels" type="hidden" value="true"> 
        <input id="with_request" name="with_request" type="hidden" value="true"> 
        
        <label for="origin_name">Origin name</label>
        <input autocomplete="off" id="origin_name" name="origin" type="text" value=""><br>
        
        <label for="destination_name">Destination name</label>
        <input id="destination_name" name="destination" type="text" value=""><br>
        
        <label for="depart_date">Depart date</label>
        <input id="depart_date" name="depart_date" type="text" value=""><br>
        
        <label for="return_date">Return date</label>
        <input id="return_date" name="return_date" type="text" value=""><br>
        
        <input id="range" name="range" type="checkbox" value="1">
        <label for="range">± 3 days</label><br>
        
        <input id="oneway" name="oneway" type="checkbox" value="1">
        <label for="oneway">one way</label><br>

        
        <select id="trip_class" name="trip_class">
            <option value="0">Economy</option>
            <option value="1">Business</option>
        </select><br>
        
        <input class="submit" id="submit" type="submit" value="Find">    
    </form>
    
    <!-- jQuery -->
    <script src="http://yandex.st/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

    <!-- Jquery-UI -->
    <script src="http://yandex.st/jquery-ui/1.8.16/jquery-ui.min.js" type="text/javascript"></script>

   
<!-- language pack for jQuery-UI -->

    <script src="http://yandex.st/jquery-ui/1.8.15/i18n/jquery.ui.datepicker-ru.min.js" type="text/javascript"></script>

    <!-- Pure -->
    <script src="js/pure.min.js" type="text/javascript"></script>

    <!-- Underscore -->
    <script src="js/underscore-min.js" type="text/javascript"></script>

    
<!-- autocomplete data -->

    <script src="http://nano.aviasales.ru/assets/autocomplete_places_en.js" type="text/javascript"></script>

     
<!-- form initializer -->

    <script src="http://nano.aviasales.ru/assets/minimal/inline_form.js" type="text/javascript"></script>
    <script>
        ASmin.inline_form.init({
            autocomplete_class: "aviasales_minified_autocomplete",
            action: "http://www.jetradar.com/searches/new",
            target: "_blank",
            form_id: "#aviasales_search",
            marker: "affiliate-id",
            fields_id: {},
            params_attributes: {}
        });
    </script>
</body>
</html>