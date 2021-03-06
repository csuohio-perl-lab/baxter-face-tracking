// Generated by gencpp from file birl_sim_examples/Gripper_Move.msg
// DO NOT EDIT!


#ifndef BIRL_SIM_EXAMPLES_MESSAGE_GRIPPER_MOVE_H
#define BIRL_SIM_EXAMPLES_MESSAGE_GRIPPER_MOVE_H

#include <ros/service_traits.h>


#include <birl_sim_examples/Gripper_MoveRequest.h>
#include <birl_sim_examples/Gripper_MoveResponse.h>


namespace birl_sim_examples
{

struct Gripper_Move
{

typedef Gripper_MoveRequest Request;
typedef Gripper_MoveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Gripper_Move
} // namespace birl_sim_examples


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::birl_sim_examples::Gripper_Move > {
  static const char* value()
  {
    return "16b119fdb1caa4ce59870b158835a73f";
  }

  static const char* value(const ::birl_sim_examples::Gripper_Move&) { return value(); }
};

template<>
struct DataType< ::birl_sim_examples::Gripper_Move > {
  static const char* value()
  {
    return "birl_sim_examples/Gripper_Move";
  }

  static const char* value(const ::birl_sim_examples::Gripper_Move&) { return value(); }
};


// service_traits::MD5Sum< ::birl_sim_examples::Gripper_MoveRequest> should match 
// service_traits::MD5Sum< ::birl_sim_examples::Gripper_Move > 
template<>
struct MD5Sum< ::birl_sim_examples::Gripper_MoveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::birl_sim_examples::Gripper_Move >::value();
  }
  static const char* value(const ::birl_sim_examples::Gripper_MoveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::birl_sim_examples::Gripper_MoveRequest> should match 
// service_traits::DataType< ::birl_sim_examples::Gripper_Move > 
template<>
struct DataType< ::birl_sim_examples::Gripper_MoveRequest>
{
  static const char* value()
  {
    return DataType< ::birl_sim_examples::Gripper_Move >::value();
  }
  static const char* value(const ::birl_sim_examples::Gripper_MoveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::birl_sim_examples::Gripper_MoveResponse> should match 
// service_traits::MD5Sum< ::birl_sim_examples::Gripper_Move > 
template<>
struct MD5Sum< ::birl_sim_examples::Gripper_MoveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::birl_sim_examples::Gripper_Move >::value();
  }
  static const char* value(const ::birl_sim_examples::Gripper_MoveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::birl_sim_examples::Gripper_MoveResponse> should match 
// service_traits::DataType< ::birl_sim_examples::Gripper_Move > 
template<>
struct DataType< ::birl_sim_examples::Gripper_MoveResponse>
{
  static const char* value()
  {
    return DataType< ::birl_sim_examples::Gripper_Move >::value();
  }
  static const char* value(const ::birl_sim_examples::Gripper_MoveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BIRL_SIM_EXAMPLES_MESSAGE_GRIPPER_MOVE_H
