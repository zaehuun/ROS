// Generated by gencpp from file service_tutorials/SrvTutorialRequest.msg
// DO NOT EDIT!


#ifndef SERVICE_TUTORIALS_MESSAGE_SRVTUTORIALREQUEST_H
#define SERVICE_TUTORIALS_MESSAGE_SRVTUTORIALREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace service_tutorials
{
template <class ContainerAllocator>
struct SrvTutorialRequest_
{
  typedef SrvTutorialRequest_<ContainerAllocator> Type;

  SrvTutorialRequest_()
    : a(0)
    , b(0)  {
    }
  SrvTutorialRequest_(const ContainerAllocator& _alloc)
    : a(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_type;
  _a_type a;

   typedef int64_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SrvTutorialRequest_

typedef ::service_tutorials::SrvTutorialRequest_<std::allocator<void> > SrvTutorialRequest;

typedef boost::shared_ptr< ::service_tutorials::SrvTutorialRequest > SrvTutorialRequestPtr;
typedef boost::shared_ptr< ::service_tutorials::SrvTutorialRequest const> SrvTutorialRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace service_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36d09b846be0b371c5f190354dd3153e";
  }

  static const char* value(const ::service_tutorials::SrvTutorialRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36d09b846be0b371ULL;
  static const uint64_t static_value2 = 0xc5f190354dd3153eULL;
};

template<class ContainerAllocator>
struct DataType< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "service_tutorials/SrvTutorialRequest";
  }

  static const char* value(const ::service_tutorials::SrvTutorialRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 a\n\
int64 b\n\
";
  }

  static const char* value(const ::service_tutorials::SrvTutorialRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SrvTutorialRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::service_tutorials::SrvTutorialRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::service_tutorials::SrvTutorialRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<int64_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVICE_TUTORIALS_MESSAGE_SRVTUTORIALREQUEST_H
