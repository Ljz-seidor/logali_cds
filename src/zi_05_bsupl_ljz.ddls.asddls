@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lab Booking Supl'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_05_BSUPL_LJZ
  as select from /dmo/book_suppl as Supplement
  association to parent ZI_04_Booking_LJZ as _Booking on  _Booking.TravelId  = $projection.TravelId
                                               and _Booking.BookingId = $projection.BookingId
  association to ZI_03_Travel_LJZ as _Travel on _Travel.TravelId = $projection.TravelId
{
  key travel_id             as TravelId,
  key booking_id            as BookingId,
  key booking_supplement_id as BookingSupplementId,
      supplement_id         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,

      /* Association */
      _Travel,
      _Booking
}
