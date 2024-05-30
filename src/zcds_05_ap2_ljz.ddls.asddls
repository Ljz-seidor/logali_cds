@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association to parent 2'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_05_ap2_ljz
  as select from /dmo/book_suppl
  association to parent zcds_05_ap1_ljz as _Booking on  _Booking.TravelId  = $projection.TravelId
                                                    and _Booking.BookingId = $projection.BookingId
  association to zcds_04_re_ljz         as _Travel  on  _Travel.TravelId = $projection.TravelId

{
  key travel_id             as TravelId,
  key booking_id            as BookingId,
  key booking_supplement_id as BookingSupplementId,
      supplement_id         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,

      /* Association */
      _Booking,
      _Travel
}
