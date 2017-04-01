// Generated by gencpp from file example_smach/AddThreeInts.msg
// DO NOT EDIT!


#ifndef EXAMPLE_SMACH_MESSAGE_ADDTHREEINTS_H
#define EXAMPLE_SMACH_MESSAGE_ADDTHREEINTS_H

#include <ros/service_traits.h>


#include <example_smach/AddThreeIntsRequest.h>
#include <example_smach/AddThreeIntsResponse.h>


namespace example_smach
{

struct AddThreeInts
{

typedef AddThreeIntsRequest Request;
typedef AddThreeIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddThreeInts
} // namespace example_smach


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::example_smach::AddThreeInts > {
  static const char* value()
  {
    return "c9caccfcada3b6a45d8528a23bccaf1a";
  }

  static const char* value(const ::example_smach::AddThreeInts&) { return value(); }
};

template<>
struct DataType< ::example_smach::AddThreeInts > {
  static const char* value()
  {
    return "example_smach/AddThreeInts";
  }

  static const char* value(const ::example_smach::AddThreeInts&) { return value(); }
};


// service_traits::MD5Sum< ::example_smach::AddThreeIntsRequest> should match 
// service_traits::MD5Sum< ::example_smach::AddThreeInts > 
template<>
struct MD5Sum< ::example_smach::AddThreeIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::example_smach::AddThreeInts >::value();
  }
  static const char* value(const ::example_smach::AddThreeIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_smach::AddThreeIntsRequest> should match 
// service_traits::DataType< ::example_smach::AddThreeInts > 
template<>
struct DataType< ::example_smach::AddThreeIntsRequest>
{
  static const char* value()
  {
    return DataType< ::example_smach::AddThreeInts >::value();
  }
  static const char* value(const ::example_smach::AddThreeIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::example_smach::AddThreeIntsResponse> should match 
// service_traits::MD5Sum< ::example_smach::AddThreeInts > 
template<>
struct MD5Sum< ::example_smach::AddThreeIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::example_smach::AddThreeInts >::value();
  }
  static const char* value(const ::example_smach::AddThreeIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_smach::AddThreeIntsResponse> should match 
// service_traits::DataType< ::example_smach::AddThreeInts > 
template<>
struct DataType< ::example_smach::AddThreeIntsResponse>
{
  static const char* value()
  {
    return DataType< ::example_smach::AddThreeInts >::value();
  }
  static const char* value(const ::example_smach::AddThreeIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXAMPLE_SMACH_MESSAGE_ADDTHREEINTS_H