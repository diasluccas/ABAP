@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View für Flight und Connection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZLD_I_FlightWithConnection as select from /dmo/flight as Flight
    inner join /dmo/connection as Connection on     Connection.carrier_id = Flight.carrier_id
                                                and Connection.connection_id = Flight.connection_id
{
    key Flight.carrier_id as CarrierId,
    key Flight.connection_id as ConnectionId,
    key Flight.flight_date as FlightDate,
    
    Connection.airport_from_id as AirportFrom,
    Connection.airport_to_id as AirportTo
}
where
    Flight.plane_type_id = '747-400'
