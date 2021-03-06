// Generated by gencpp from file parameter_tutorials/SrvTutorial.msg
// DO NOT EDIT!


#ifndef PARAMETER_TUTORIALS_MESSAGE_SRVTUTORIAL_H
#define PARAMETER_TUTORIALS_MESSAGE_SRVTUTORIAL_H

#include <ros/service_traits.h>


#include <parameter_tutorials/SrvTutorialRequest.h>
#include <parameter_tutorials/SrvTutorialResponse.h>


namespace parameter_tutorials
{

struct SrvTutorial
{

typedef SrvTutorialRequest Request;
typedef SrvTutorialResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SrvTutorial
} // namespace parameter_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::parameter_tutorials::SrvTutorial > {
  static const char* value()
  {
    return "d431cae597499d244ef1c576e21358c8";
  }

  static const char* value(const ::parameter_tutorials::SrvTutorial&) { return value(); }
};

template<>
struct DataType< ::parameter_tutorials::SrvTutorial > {
  static const char* value()
  {
    return "parameter_tutorials/SrvTutorial";
  }

  static const char* value(const ::parameter_tutorials::SrvTutorial&) { return value(); }
};


// service_traits::MD5Sum< ::parameter_tutorials::SrvTutorialRequest> should match 
// service_traits::MD5Sum< ::parameter_tutorials::SrvTutorial > 
template<>
struct MD5Sum< ::parameter_tutorials::SrvTutorialRequest>
{
  static const char* value()
  {
    return MD5Sum< ::parameter_tutorials::SrvTutorial >::value();
  }
  static const char* value(const ::parameter_tutorials::SrvTutorialRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::parameter_tutorials::SrvTutorialRequest> should match 
// service_traits::DataType< ::parameter_tutorials::SrvTutorial > 
template<>
struct DataType< ::parameter_tutorials::SrvTutorialRequest>
{
  static const char* value()
  {
    return DataType< ::parameter_tutorials::SrvTutorial >::value();
  }
  static const char* value(const ::parameter_tutorials::SrvTutorialRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::parameter_tutorials::SrvTutorialResponse> should match 
// service_traits::MD5Sum< ::parameter_tutorials::SrvTutorial > 
template<>
struct MD5Sum< ::parameter_tutorials::SrvTutorialResponse>
{
  static const char* value()
  {
    return MD5Sum< ::parameter_tutorials::SrvTutorial >::value();
  }
  static const char* value(const ::parameter_tutorials::SrvTutorialResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::parameter_tutorials::SrvTutorialResponse> should match 
// service_traits::DataType< ::parameter_tutorials::SrvTutorial > 
template<>
struct DataType< ::parameter_tutorials::SrvTutorialResponse>
{
  static const char* value()
  {
    return DataType< ::parameter_tutorials::SrvTutorial >::value();
  }
  static const char* value(const ::parameter_tutorials::SrvTutorialResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PARAMETER_TUTORIALS_MESSAGE_SRVTUTORIAL_H
