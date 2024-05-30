@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lab Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_03_Travel_LJZ
  as select from /dmo/travel as Travel
  association to /dmo/agency as _Agency on _Agency.agency_id = $projection.AgencyId
  association to /DMO/I_Customer as _Customer on _Customer.CustomerID = $projection.CustomerId 
  composition [*] of ZI_04_Booking_LJZ as _Booking 
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'      
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      createdby     as Createdby,
      createdat     as Createdat,
      lastchangedby as Lastchangedby,
      lastchangedat as Lastchangedat,
      
      /* Association */
      _Agency,
      _Customer,
      _Booking
      
}
