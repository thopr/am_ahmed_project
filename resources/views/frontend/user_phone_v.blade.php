@extends('frontend.layouts.app')

@section('content')
    <section class="py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xl-5 mx-auto">
                    <div class="card">
                        <div class="text-center pt-5">
                            <h1 class="h2 fw-600">
                                {{translate('Code Verification')}}
                            </h1>
                            <p>{{translate('Verification code has been sent. Please wait a few minutes.')}}</p>
                            <button  class="btn btn-link" onClick="window.location.reload();">{{translate('Resend Code')}}</button>

                           
                        </div>
                        <div class="px-5 py-lg-5">
                            <div class="row align-items-center">
                                <div class="col-12 col-lg">
                                    <form class="form-default" role="form" action="{{ route('cart.login.submit') }}" method="POST">
                                        @csrf
                                      
                                    
                                        <div class="form-group ">
                                            <input type="text" class="form-control " value={{$phone}} name="phone" id="phone" readonly >
                                            <input type="text" class="form-control " placeholder="{{ translate('Code')}}" name="password" id="password">
                                            <input type="hidden" class="form-control " placeholder="{{ translate('Code')}}" name="country_code" id="country_code">
                                            <input type="hidden" class="form-control " placeholder="{{ translate('Code')}}" name="email" id="email">
                                            <input type="hidden" class="form-control " placeholder="{{ translate('Code')}}" value={{$mycheck}} name="ztype_check" id="email">
                                        </div>


                                        <button type="submit" class="btn btn-primary btn-block">{{ translate('Continue') }}</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
