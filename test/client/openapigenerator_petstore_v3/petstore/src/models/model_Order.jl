# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Order
An order for a pets from the pet store

    Order(;
        petId=nothing,
        shipDate=nothing,
        status=nothing,
        id=nothing,
        complete=false,
        quantity=nothing,
    )

    - petId::Int64
    - shipDate::ZonedDateTime
    - status::String : Order Status
    - id::Int64
    - complete::Bool
    - quantity::Int64
"""
Base.@kwdef mutable struct Order <: OpenAPI.APIModel
    petId::Union{Nothing, Int64} = nothing
    shipDate::Union{Nothing, ZonedDateTime} = nothing
    status::Union{Nothing, String} = nothing
    id::Union{Nothing, Int64} = nothing
    complete::Union{Nothing, Bool} = false
    quantity::Union{Nothing, Int64} = nothing

    function Order(petId, shipDate, status, id, complete, quantity, )
        OpenAPI.validate_property(Order, Symbol("petId"), petId)
        OpenAPI.validate_property(Order, Symbol("shipDate"), shipDate)
        OpenAPI.validate_property(Order, Symbol("status"), status)
        OpenAPI.validate_property(Order, Symbol("id"), id)
        OpenAPI.validate_property(Order, Symbol("complete"), complete)
        OpenAPI.validate_property(Order, Symbol("quantity"), quantity)
        return new(petId, shipDate, status, id, complete, quantity, )
    end
end # type Order

const _property_types_Order = Dict{Symbol,String}(Symbol("petId")=>"Int64", Symbol("shipDate")=>"ZonedDateTime", Symbol("status")=>"String", Symbol("id")=>"Int64", Symbol("complete")=>"Bool", Symbol("quantity")=>"Int64", )
OpenAPI.property_type(::Type{ Order }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Order[name]))}

function check_required(o::Order)
    true
end

function OpenAPI.validate_property(::Type{ Order }, name::Symbol, val)
    if name === Symbol("petId")
        OpenAPI.validate_param(name, "Order", :format, val, "int64")
    end
    if name === Symbol("shipDate")
        OpenAPI.validate_param(name, "Order", :format, val, "date-time")
    end
    if name === Symbol("status")
        OpenAPI.validate_param(name, "Order", :enum, val, ["placed", "approved", "delivered"])
    end
    if name === Symbol("id")
        OpenAPI.validate_param(name, "Order", :format, val, "int64")
    end
    if name === Symbol("quantity")
        OpenAPI.validate_param(name, "Order", :format, val, "int32")
    end
end
