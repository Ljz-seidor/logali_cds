@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lab Booking LJZ'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_04_Booking_LJZ
  as select from /dmo/booking as Booking
  association to parent ZI_03_Travel_LJZ as _Travel on _Travel.TravelId = $projection.TravelId
  composition [*] of ZI_05_BSUPL_LJZ as _Supplement
{
  key travel_id     as TravelId,
  key booking_id    as BookingId,
      booking_date  as BookingDate,
      customer_id   as CustomerId,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,
      
      /* Association */
      _Travel,
      _Supplement
}
