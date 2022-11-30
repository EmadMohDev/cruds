@extends('layouts.backend')

@section('content')

    <div class="post d-flex flex-column-fluid" id="kt_post">
        <!--begin::Container-->
        <div id="kt_content_container" class="container-xxl">
            <!--begin::Inbox App - Messages -->
            <div class="d-flex flex-column flex-lg-row">

                <!--begin::Sidebar-->
                @include('backend.emails.includes.sidebar')
                <!--end::Sidebar-->


            </div>
            <!--end::Inbox App - Messages -->
        </div>
        <!--end::Container-->
    </div>

@endsection
