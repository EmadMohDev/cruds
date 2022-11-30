@extends('layouts.backend')

@section('style')
    <style>
        ul#results {
            padding: 0;
            list-style: none;
            margin: 0;
            box-shadow: 5px 5px 15px grey;
            max-height: 300px;
            overflow-y: scroll;
            position: absolute;
            left: 0;
            right: 0;
            z-index: 10000000000000000;
            background-color: #fff
        }
        ul#results li {
            padding: 5px 10px;
        }
        ul#results ul.sub {
            padding: 0;
            list-style: none;
            margin: 0;
        }
        ul#results ul.sub .title {
            text-align: center;
            padding: 10px;
            background-color: #00000036;
            margin: 0;
            text-transform: capitalize;
        }
        ul#results a {
            display: block;
            padding: 10px 20px;
            border-bottom: 1px solid #fff;
            background-color: #e5e5e559;
        }
        ul#results ul.sub li:nth-child(odd) a {
            background-color: #efefef;
        }
        ul#results .search-keyword {
            background-color: yellow;
        }
        ul#results a:hover {
            background-color: #e2e8f0 !important;
        }
    </style>
@endsection

@section('content')
<!-- eCommerce statistic -->

{{--  <div class="mb-5 position-relative">
    <div class="input-group">
        <span class="input-group-text"> <i class="fa fa-search"></i> </span>
        <input type="search" class="form-control" id="search-bar" placeholder="Search..." autocomplete="off">
    </div>
    <ul id="results"></ul>
</div>  --}}

<div class="row">
    @php $i = 0;  @endphp
    @foreach ($tables as $name => $data)
            @include("backend.home.statistics", ['model' => $name, 'count' => $data['count'], 'color' => $colors[$i]])

        @php $i++;  @endphp
    @endforeach



</div>
<!--/ eCommerce statistic -->
@endsection


@section('script')
    <script>
        let jqXHR = {abort: function(){}}; // To canceled request
        let val; // current input value
        $('#search-bar').on('change keyup', function(e) {
            if( !checkInput(e, $(this).val()) ) return;
            val = $(this).val();
            jqXHR.abort(); // canceled old request to send new
            $('#results').slideDown(300);
            jqXHR = $.ajax({
                url: '{{ routeHelper("search") }}',
                type: "post",
                data: {search: val},
                success: function (response, textStatus, jqXHR) {
                    $('#results').empty();
                    if (response.length == 0)
                        $('#results').append( "<li>No Data Found!</li>" );
                    else {
                        $.each(response, function (model, rows) {
                            var ele = $(`<ul class='sub'> <li> <h3 class='title'> ${model} </h3> </li> </ul>`);
                            $('#results').append(ele);
                            $.each(rows, function (key, val) {
                                ele.append(createRow(val));
                            });
                        });
                    }
                }
            });
        });

        function checkInput(e, new_val) // check if input not changed or empty
        {
            if (new_val.length == 0) {
                $('#results').empty();
                return false;
            }
            if (new_val == val) return false;
            return true
        }

        function createRow(row) // The row HTML
        {
            return `<li>
                        <a href='${row.view_link}'>
                            <span>${row.match}</span>
                        </a>
                    </li>`;
        }
    </script>
@endsection
