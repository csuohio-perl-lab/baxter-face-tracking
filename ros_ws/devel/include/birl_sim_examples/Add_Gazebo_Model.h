// Generated by gencpp from file birl_sim_examples/Add_Gazebo_Model.msg
// DO NOT EDIT!


#ifndef BIRL_SIM_EXAMPLES_MESSAGE_ADD_GAZEBO_MODEL_H
#define BIRL_SIM_EXAMPLES_MESSAGE_ADD_GAZEBO_MODEL_H

#include <ros/service_traits.h>


#include <birl_sim_examples/Add_Gazebo_ModelRequest.h>
#include <birl_sim_examples/Add_Gazebo_ModelResponse.h>


namespace birl_sim_examples
{

struct Add_Gazebo_Model
{

typedef Add_Gazebo_ModelRequest Request;
typedef Add_Gazebo_ModelResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Add_Gazebo_Model
} // namespace birl_sim_examples


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::birl_sim_examples::Add_Gazebo_Model > {
  static const char* value()
  {
    return "4a89e17e67d4f1fa4b02d6868553717a";
  }

  static const char* value(const ::birl_sim_examples::Add_Gazebo_Model&) { return value(); }
};

template<>
struct DataType< ::birl_sim_examples::Add_Gazebo_Model > {
  static const char* value()
  {
    return "birl_sim_examples/Add_Gazebo_Model";
  }

  static const char* value(const ::birl_sim_examples::Add_Gazebo_Model&) { return value(); }
};


// service_traits::MD5Sum< ::birl_sim_examples::Add_Gazebo_ModelRequest> should match 
// service_traits::MD5Sum< ::birl_sim_examples::Add_Gazebo_Model > 
template<>
struct MD5Sum< ::birl_sim_examples::Add_Gazebo_ModelRequest>
{
  static const char* value()
  {
    return MD5Sum< ::birl_sim_examples::Add_Gazebo_Model >::value();
  }
  static const char* value(const ::birl_sim_examples::Add_Gazebo_ModelRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::birl_sim_examples::Add_Gazebo_ModelRequest> should match 
// service_traits::DataType< ::birl_sim_examples::Add_Gazebo_Model > 
template<>
struct DataType< ::birl_sim_examples::Add_Gazebo_ModelRequest>
{
  static const char* value()
  {
    return DataType< ::birl_sim_examples::Add_Gazebo_Model >::value();
  }
  static const char* value(const ::birl_sim_examples::Add_Gazebo_ModelRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::birl_sim_examples::Add_Gazebo_ModelResponse> should match 
// service_traits::MD5Sum< ::birl_sim_examples::Add_Gazebo_Model > 
template<>
struct MD5Sum< ::birl_sim_examples::Add_Gazebo_ModelResponse>
{
  static const char* value()
  {
    return MD5Sum< ::birl_sim_examples::Add_Gazebo_Model >::value();
  }
  static const char* value(const ::birl_sim_examples::Add_Gazebo_ModelResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::birl_sim_examples::Add_Gazebo_ModelResponse> should match 
// service_traits::DataType< ::birl_sim_examples::Add_Gazebo_Model > 
template<>
struct DataType< ::birl_sim_examples::Add_Gazebo_ModelResponse>
{
  static const char* value()
  {
    return DataType< ::birl_sim_examples::Add_Gazebo_Model >::value();
  }
  static const char* value(const ::birl_sim_examples::Add_Gazebo_ModelResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BIRL_SIM_EXAMPLES_MESSAGE_ADD_GAZEBO_MODEL_H
