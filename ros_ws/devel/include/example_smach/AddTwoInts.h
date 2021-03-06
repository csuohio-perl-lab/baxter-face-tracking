// Generated by gencpp from file example_smach/AddTwoInts.msg
// DO NOT EDIT!


#ifndef EXAMPLE_SMACH_MESSAGE_ADDTWOINTS_H
#define EXAMPLE_SMACH_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <example_smach/AddTwoIntsRequest.h>
#include <example_smach/AddTwoIntsResponse.h>


namespace example_smach
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace example_smach


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::example_smach::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::example_smach::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::example_smach::AddTwoInts > {
  static const char* value()
  {
    return "example_smach/AddTwoInts";
  }

  static const char* value(const ::example_smach::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::example_smach::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::example_smach::AddTwoInts > 
template<>
struct MD5Sum< ::example_smach::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::example_smach::AddTwoInts >::value();
  }
  static const char* value(const ::example_smach::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_smach::AddTwoIntsRequest> should match 
// service_traits::DataType< ::example_smach::AddTwoInts > 
template<>
struct DataType< ::example_smach::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::example_smach::AddTwoInts >::value();
  }
  static const char* value(const ::example_smach::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::example_smach::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::example_smach::AddTwoInts > 
template<>
struct MD5Sum< ::example_smach::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::example_smach::AddTwoInts >::value();
  }
  static const char* value(const ::example_smach::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_smach::AddTwoIntsResponse> should match 
// service_traits::DataType< ::example_smach::AddTwoInts > 
template<>
struct DataType< ::example_smach::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::example_smach::AddTwoInts >::value();
  }
  static const char* value(const ::example_smach::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXAMPLE_SMACH_MESSAGE_ADDTWOINTS_H
