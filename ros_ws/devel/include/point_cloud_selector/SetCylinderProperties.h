// Generated by gencpp from file point_cloud_selector/SetCylinderProperties.msg
// DO NOT EDIT!


#ifndef POINT_CLOUD_SELECTOR_MESSAGE_SETCYLINDERPROPERTIES_H
#define POINT_CLOUD_SELECTOR_MESSAGE_SETCYLINDERPROPERTIES_H

#include <ros/service_traits.h>


#include <point_cloud_selector/SetCylinderPropertiesRequest.h>
#include <point_cloud_selector/SetCylinderPropertiesResponse.h>


namespace point_cloud_selector
{

struct SetCylinderProperties
{

typedef SetCylinderPropertiesRequest Request;
typedef SetCylinderPropertiesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetCylinderProperties
} // namespace point_cloud_selector


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::point_cloud_selector::SetCylinderProperties > {
  static const char* value()
  {
    return "99b58a07a4ea44adc43db01044994e75";
  }

  static const char* value(const ::point_cloud_selector::SetCylinderProperties&) { return value(); }
};

template<>
struct DataType< ::point_cloud_selector::SetCylinderProperties > {
  static const char* value()
  {
    return "point_cloud_selector/SetCylinderProperties";
  }

  static const char* value(const ::point_cloud_selector::SetCylinderProperties&) { return value(); }
};


// service_traits::MD5Sum< ::point_cloud_selector::SetCylinderPropertiesRequest> should match 
// service_traits::MD5Sum< ::point_cloud_selector::SetCylinderProperties > 
template<>
struct MD5Sum< ::point_cloud_selector::SetCylinderPropertiesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::point_cloud_selector::SetCylinderProperties >::value();
  }
  static const char* value(const ::point_cloud_selector::SetCylinderPropertiesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::point_cloud_selector::SetCylinderPropertiesRequest> should match 
// service_traits::DataType< ::point_cloud_selector::SetCylinderProperties > 
template<>
struct DataType< ::point_cloud_selector::SetCylinderPropertiesRequest>
{
  static const char* value()
  {
    return DataType< ::point_cloud_selector::SetCylinderProperties >::value();
  }
  static const char* value(const ::point_cloud_selector::SetCylinderPropertiesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::point_cloud_selector::SetCylinderPropertiesResponse> should match 
// service_traits::MD5Sum< ::point_cloud_selector::SetCylinderProperties > 
template<>
struct MD5Sum< ::point_cloud_selector::SetCylinderPropertiesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::point_cloud_selector::SetCylinderProperties >::value();
  }
  static const char* value(const ::point_cloud_selector::SetCylinderPropertiesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::point_cloud_selector::SetCylinderPropertiesResponse> should match 
// service_traits::DataType< ::point_cloud_selector::SetCylinderProperties > 
template<>
struct DataType< ::point_cloud_selector::SetCylinderPropertiesResponse>
{
  static const char* value()
  {
    return DataType< ::point_cloud_selector::SetCylinderProperties >::value();
  }
  static const char* value(const ::point_cloud_selector::SetCylinderPropertiesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POINT_CLOUD_SELECTOR_MESSAGE_SETCYLINDERPROPERTIES_H
