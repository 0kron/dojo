// generated from rosidl_generator_c/resource/idl__description.c.em
// with input from my_robot_interfaces:srv/ResetSum.idl
// generated code does not contain a copyright notice

#include "my_robot_interfaces/srv/detail/reset_sum__functions.h"

ROSIDL_GENERATOR_C_PUBLIC_my_robot_interfaces
const rosidl_type_hash_t *
my_robot_interfaces__srv__ResetSum__get_type_hash(
  const rosidl_service_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_type_hash_t hash = {1, {
      0x9e, 0xc2, 0xf7, 0xf2, 0x86, 0xc1, 0x99, 0x4a,
      0xdd, 0xb3, 0xd6, 0xa5, 0x9f, 0xf6, 0xfe, 0xe6,
      0x81, 0x7a, 0x8c, 0x5f, 0x70, 0xc1, 0xf1, 0xd6,
      0xc8, 0x64, 0x4e, 0xe1, 0x23, 0x48, 0x63, 0xe2,
    }};
  return &hash;
}

ROSIDL_GENERATOR_C_PUBLIC_my_robot_interfaces
const rosidl_type_hash_t *
my_robot_interfaces__srv__ResetSum_Request__get_type_hash(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_type_hash_t hash = {1, {
      0x1e, 0x18, 0x5e, 0xb3, 0x68, 0xd7, 0x69, 0x09,
      0x10, 0xb0, 0x38, 0x2d, 0x0e, 0xff, 0x67, 0xf9,
      0x4e, 0x5e, 0x40, 0x30, 0x80, 0x60, 0xff, 0x55,
      0x85, 0x0f, 0x82, 0xdb, 0x2a, 0x5a, 0x1d, 0x59,
    }};
  return &hash;
}

ROSIDL_GENERATOR_C_PUBLIC_my_robot_interfaces
const rosidl_type_hash_t *
my_robot_interfaces__srv__ResetSum_Response__get_type_hash(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_type_hash_t hash = {1, {
      0x88, 0xc3, 0x28, 0x8b, 0x46, 0x31, 0xcb, 0x7f,
      0x04, 0xb6, 0xfc, 0x11, 0xee, 0xdd, 0x37, 0x35,
      0x95, 0xf3, 0xe2, 0x50, 0xfa, 0x96, 0xe6, 0x64,
      0xd5, 0x9c, 0xf3, 0xca, 0x98, 0x9c, 0x49, 0x19,
    }};
  return &hash;
}

ROSIDL_GENERATOR_C_PUBLIC_my_robot_interfaces
const rosidl_type_hash_t *
my_robot_interfaces__srv__ResetSum_Event__get_type_hash(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_type_hash_t hash = {1, {
      0x4d, 0x4f, 0x91, 0x83, 0x40, 0x4b, 0x3c, 0x57,
      0x9d, 0x59, 0x60, 0xd6, 0x30, 0xde, 0xdc, 0x9c,
      0x73, 0x39, 0x46, 0x67, 0x69, 0xf0, 0x0d, 0x9f,
      0x88, 0xa7, 0x5e, 0x16, 0x71, 0x68, 0x94, 0xc7,
    }};
  return &hash;
}

#include <assert.h>
#include <string.h>

// Include directives for referenced types
#include "service_msgs/msg/detail/service_event_info__functions.h"
#include "builtin_interfaces/msg/detail/time__functions.h"

// Hashes for external referenced types
#ifndef NDEBUG
static const rosidl_type_hash_t builtin_interfaces__msg__Time__EXPECTED_HASH = {1, {
    0xb1, 0x06, 0x23, 0x5e, 0x25, 0xa4, 0xc5, 0xed,
    0x35, 0x09, 0x8a, 0xa0, 0xa6, 0x1a, 0x3e, 0xe9,
    0xc9, 0xb1, 0x8d, 0x19, 0x7f, 0x39, 0x8b, 0x0e,
    0x42, 0x06, 0xce, 0xa9, 0xac, 0xf9, 0xc1, 0x97,
  }};
static const rosidl_type_hash_t service_msgs__msg__ServiceEventInfo__EXPECTED_HASH = {1, {
    0x41, 0xbc, 0xbb, 0xe0, 0x7a, 0x75, 0xc9, 0xb5,
    0x2b, 0xc9, 0x6b, 0xfd, 0x5c, 0x24, 0xd7, 0xf0,
    0xfc, 0x0a, 0x08, 0xc0, 0xcb, 0x79, 0x21, 0xb3,
    0x37, 0x3c, 0x57, 0x32, 0x34, 0x5a, 0x6f, 0x45,
  }};
#endif

static char my_robot_interfaces__srv__ResetSum__TYPE_NAME[] = "my_robot_interfaces/srv/ResetSum";
static char builtin_interfaces__msg__Time__TYPE_NAME[] = "builtin_interfaces/msg/Time";
static char my_robot_interfaces__srv__ResetSum_Event__TYPE_NAME[] = "my_robot_interfaces/srv/ResetSum_Event";
static char my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME[] = "my_robot_interfaces/srv/ResetSum_Request";
static char my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME[] = "my_robot_interfaces/srv/ResetSum_Response";
static char service_msgs__msg__ServiceEventInfo__TYPE_NAME[] = "service_msgs/msg/ServiceEventInfo";

// Define type names, field names, and default values
static char my_robot_interfaces__srv__ResetSum__FIELD_NAME__request_message[] = "request_message";
static char my_robot_interfaces__srv__ResetSum__FIELD_NAME__response_message[] = "response_message";
static char my_robot_interfaces__srv__ResetSum__FIELD_NAME__event_message[] = "event_message";

static rosidl_runtime_c__type_description__Field my_robot_interfaces__srv__ResetSum__FIELDS[] = {
  {
    {my_robot_interfaces__srv__ResetSum__FIELD_NAME__request_message, 15, 15},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_NESTED_TYPE,
      0,
      0,
      {my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME, 40, 40},
    },
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum__FIELD_NAME__response_message, 16, 16},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_NESTED_TYPE,
      0,
      0,
      {my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME, 41, 41},
    },
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum__FIELD_NAME__event_message, 13, 13},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_NESTED_TYPE,
      0,
      0,
      {my_robot_interfaces__srv__ResetSum_Event__TYPE_NAME, 38, 38},
    },
    {NULL, 0, 0},
  },
};

static rosidl_runtime_c__type_description__IndividualTypeDescription my_robot_interfaces__srv__ResetSum__REFERENCED_TYPE_DESCRIPTIONS[] = {
  {
    {builtin_interfaces__msg__Time__TYPE_NAME, 27, 27},
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Event__TYPE_NAME, 38, 38},
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME, 40, 40},
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME, 41, 41},
    {NULL, 0, 0},
  },
  {
    {service_msgs__msg__ServiceEventInfo__TYPE_NAME, 33, 33},
    {NULL, 0, 0},
  },
};

const rosidl_runtime_c__type_description__TypeDescription *
my_robot_interfaces__srv__ResetSum__get_type_description(
  const rosidl_service_type_support_t * type_support)
{
  (void)type_support;
  static bool constructed = false;
  static const rosidl_runtime_c__type_description__TypeDescription description = {
    {
      {my_robot_interfaces__srv__ResetSum__TYPE_NAME, 32, 32},
      {my_robot_interfaces__srv__ResetSum__FIELDS, 3, 3},
    },
    {my_robot_interfaces__srv__ResetSum__REFERENCED_TYPE_DESCRIPTIONS, 5, 5},
  };
  if (!constructed) {
    assert(0 == memcmp(&builtin_interfaces__msg__Time__EXPECTED_HASH, builtin_interfaces__msg__Time__get_type_hash(NULL), sizeof(rosidl_type_hash_t)));
    description.referenced_type_descriptions.data[0].fields = builtin_interfaces__msg__Time__get_type_description(NULL)->type_description.fields;
    description.referenced_type_descriptions.data[1].fields = my_robot_interfaces__srv__ResetSum_Event__get_type_description(NULL)->type_description.fields;
    description.referenced_type_descriptions.data[2].fields = my_robot_interfaces__srv__ResetSum_Request__get_type_description(NULL)->type_description.fields;
    description.referenced_type_descriptions.data[3].fields = my_robot_interfaces__srv__ResetSum_Response__get_type_description(NULL)->type_description.fields;
    assert(0 == memcmp(&service_msgs__msg__ServiceEventInfo__EXPECTED_HASH, service_msgs__msg__ServiceEventInfo__get_type_hash(NULL), sizeof(rosidl_type_hash_t)));
    description.referenced_type_descriptions.data[4].fields = service_msgs__msg__ServiceEventInfo__get_type_description(NULL)->type_description.fields;
    constructed = true;
  }
  return &description;
}
// Define type names, field names, and default values
static char my_robot_interfaces__srv__ResetSum_Request__FIELD_NAME__reset_value[] = "reset_value";

static rosidl_runtime_c__type_description__Field my_robot_interfaces__srv__ResetSum_Request__FIELDS[] = {
  {
    {my_robot_interfaces__srv__ResetSum_Request__FIELD_NAME__reset_value, 11, 11},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_INT64,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
};

const rosidl_runtime_c__type_description__TypeDescription *
my_robot_interfaces__srv__ResetSum_Request__get_type_description(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static bool constructed = false;
  static const rosidl_runtime_c__type_description__TypeDescription description = {
    {
      {my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME, 40, 40},
      {my_robot_interfaces__srv__ResetSum_Request__FIELDS, 1, 1},
    },
    {NULL, 0, 0},
  };
  if (!constructed) {
    constructed = true;
  }
  return &description;
}
// Define type names, field names, and default values
static char my_robot_interfaces__srv__ResetSum_Response__FIELD_NAME__success[] = "success";
static char my_robot_interfaces__srv__ResetSum_Response__FIELD_NAME__message[] = "message";

static rosidl_runtime_c__type_description__Field my_robot_interfaces__srv__ResetSum_Response__FIELDS[] = {
  {
    {my_robot_interfaces__srv__ResetSum_Response__FIELD_NAME__success, 7, 7},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_BOOLEAN,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Response__FIELD_NAME__message, 7, 7},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_STRING,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
};

const rosidl_runtime_c__type_description__TypeDescription *
my_robot_interfaces__srv__ResetSum_Response__get_type_description(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static bool constructed = false;
  static const rosidl_runtime_c__type_description__TypeDescription description = {
    {
      {my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME, 41, 41},
      {my_robot_interfaces__srv__ResetSum_Response__FIELDS, 2, 2},
    },
    {NULL, 0, 0},
  };
  if (!constructed) {
    constructed = true;
  }
  return &description;
}
// Define type names, field names, and default values
static char my_robot_interfaces__srv__ResetSum_Event__FIELD_NAME__info[] = "info";
static char my_robot_interfaces__srv__ResetSum_Event__FIELD_NAME__request[] = "request";
static char my_robot_interfaces__srv__ResetSum_Event__FIELD_NAME__response[] = "response";

static rosidl_runtime_c__type_description__Field my_robot_interfaces__srv__ResetSum_Event__FIELDS[] = {
  {
    {my_robot_interfaces__srv__ResetSum_Event__FIELD_NAME__info, 4, 4},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_NESTED_TYPE,
      0,
      0,
      {service_msgs__msg__ServiceEventInfo__TYPE_NAME, 33, 33},
    },
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Event__FIELD_NAME__request, 7, 7},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_NESTED_TYPE_BOUNDED_SEQUENCE,
      1,
      0,
      {my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME, 40, 40},
    },
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Event__FIELD_NAME__response, 8, 8},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_NESTED_TYPE_BOUNDED_SEQUENCE,
      1,
      0,
      {my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME, 41, 41},
    },
    {NULL, 0, 0},
  },
};

static rosidl_runtime_c__type_description__IndividualTypeDescription my_robot_interfaces__srv__ResetSum_Event__REFERENCED_TYPE_DESCRIPTIONS[] = {
  {
    {builtin_interfaces__msg__Time__TYPE_NAME, 27, 27},
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME, 40, 40},
    {NULL, 0, 0},
  },
  {
    {my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME, 41, 41},
    {NULL, 0, 0},
  },
  {
    {service_msgs__msg__ServiceEventInfo__TYPE_NAME, 33, 33},
    {NULL, 0, 0},
  },
};

const rosidl_runtime_c__type_description__TypeDescription *
my_robot_interfaces__srv__ResetSum_Event__get_type_description(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static bool constructed = false;
  static const rosidl_runtime_c__type_description__TypeDescription description = {
    {
      {my_robot_interfaces__srv__ResetSum_Event__TYPE_NAME, 38, 38},
      {my_robot_interfaces__srv__ResetSum_Event__FIELDS, 3, 3},
    },
    {my_robot_interfaces__srv__ResetSum_Event__REFERENCED_TYPE_DESCRIPTIONS, 4, 4},
  };
  if (!constructed) {
    assert(0 == memcmp(&builtin_interfaces__msg__Time__EXPECTED_HASH, builtin_interfaces__msg__Time__get_type_hash(NULL), sizeof(rosidl_type_hash_t)));
    description.referenced_type_descriptions.data[0].fields = builtin_interfaces__msg__Time__get_type_description(NULL)->type_description.fields;
    description.referenced_type_descriptions.data[1].fields = my_robot_interfaces__srv__ResetSum_Request__get_type_description(NULL)->type_description.fields;
    description.referenced_type_descriptions.data[2].fields = my_robot_interfaces__srv__ResetSum_Response__get_type_description(NULL)->type_description.fields;
    assert(0 == memcmp(&service_msgs__msg__ServiceEventInfo__EXPECTED_HASH, service_msgs__msg__ServiceEventInfo__get_type_hash(NULL), sizeof(rosidl_type_hash_t)));
    description.referenced_type_descriptions.data[3].fields = service_msgs__msg__ServiceEventInfo__get_type_description(NULL)->type_description.fields;
    constructed = true;
  }
  return &description;
}

static char toplevel_type_raw_source[] =
  "int64 reset_value\n"
  "---\n"
  "bool success\n"
  "string message";

static char srv_encoding[] = "srv";
static char implicit_encoding[] = "implicit";

// Define all individual source functions

const rosidl_runtime_c__type_description__TypeSource *
my_robot_interfaces__srv__ResetSum__get_individual_type_description_source(
  const rosidl_service_type_support_t * type_support)
{
  (void)type_support;
  static const rosidl_runtime_c__type_description__TypeSource source = {
    {my_robot_interfaces__srv__ResetSum__TYPE_NAME, 32, 32},
    {srv_encoding, 3, 3},
    {toplevel_type_raw_source, 50, 50},
  };
  return &source;
}

const rosidl_runtime_c__type_description__TypeSource *
my_robot_interfaces__srv__ResetSum_Request__get_individual_type_description_source(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static const rosidl_runtime_c__type_description__TypeSource source = {
    {my_robot_interfaces__srv__ResetSum_Request__TYPE_NAME, 40, 40},
    {implicit_encoding, 8, 8},
    {NULL, 0, 0},
  };
  return &source;
}

const rosidl_runtime_c__type_description__TypeSource *
my_robot_interfaces__srv__ResetSum_Response__get_individual_type_description_source(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static const rosidl_runtime_c__type_description__TypeSource source = {
    {my_robot_interfaces__srv__ResetSum_Response__TYPE_NAME, 41, 41},
    {implicit_encoding, 8, 8},
    {NULL, 0, 0},
  };
  return &source;
}

const rosidl_runtime_c__type_description__TypeSource *
my_robot_interfaces__srv__ResetSum_Event__get_individual_type_description_source(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static const rosidl_runtime_c__type_description__TypeSource source = {
    {my_robot_interfaces__srv__ResetSum_Event__TYPE_NAME, 38, 38},
    {implicit_encoding, 8, 8},
    {NULL, 0, 0},
  };
  return &source;
}

const rosidl_runtime_c__type_description__TypeSource__Sequence *
my_robot_interfaces__srv__ResetSum__get_type_description_sources(
  const rosidl_service_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_runtime_c__type_description__TypeSource sources[6];
  static const rosidl_runtime_c__type_description__TypeSource__Sequence source_sequence = {sources, 6, 6};
  static bool constructed = false;
  if (!constructed) {
    sources[0] = *my_robot_interfaces__srv__ResetSum__get_individual_type_description_source(NULL),
    sources[1] = *builtin_interfaces__msg__Time__get_individual_type_description_source(NULL);
    sources[2] = *my_robot_interfaces__srv__ResetSum_Event__get_individual_type_description_source(NULL);
    sources[3] = *my_robot_interfaces__srv__ResetSum_Request__get_individual_type_description_source(NULL);
    sources[4] = *my_robot_interfaces__srv__ResetSum_Response__get_individual_type_description_source(NULL);
    sources[5] = *service_msgs__msg__ServiceEventInfo__get_individual_type_description_source(NULL);
    constructed = true;
  }
  return &source_sequence;
}

const rosidl_runtime_c__type_description__TypeSource__Sequence *
my_robot_interfaces__srv__ResetSum_Request__get_type_description_sources(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_runtime_c__type_description__TypeSource sources[1];
  static const rosidl_runtime_c__type_description__TypeSource__Sequence source_sequence = {sources, 1, 1};
  static bool constructed = false;
  if (!constructed) {
    sources[0] = *my_robot_interfaces__srv__ResetSum_Request__get_individual_type_description_source(NULL),
    constructed = true;
  }
  return &source_sequence;
}

const rosidl_runtime_c__type_description__TypeSource__Sequence *
my_robot_interfaces__srv__ResetSum_Response__get_type_description_sources(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_runtime_c__type_description__TypeSource sources[1];
  static const rosidl_runtime_c__type_description__TypeSource__Sequence source_sequence = {sources, 1, 1};
  static bool constructed = false;
  if (!constructed) {
    sources[0] = *my_robot_interfaces__srv__ResetSum_Response__get_individual_type_description_source(NULL),
    constructed = true;
  }
  return &source_sequence;
}

const rosidl_runtime_c__type_description__TypeSource__Sequence *
my_robot_interfaces__srv__ResetSum_Event__get_type_description_sources(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_runtime_c__type_description__TypeSource sources[5];
  static const rosidl_runtime_c__type_description__TypeSource__Sequence source_sequence = {sources, 5, 5};
  static bool constructed = false;
  if (!constructed) {
    sources[0] = *my_robot_interfaces__srv__ResetSum_Event__get_individual_type_description_source(NULL),
    sources[1] = *builtin_interfaces__msg__Time__get_individual_type_description_source(NULL);
    sources[2] = *my_robot_interfaces__srv__ResetSum_Request__get_individual_type_description_source(NULL);
    sources[3] = *my_robot_interfaces__srv__ResetSum_Response__get_individual_type_description_source(NULL);
    sources[4] = *service_msgs__msg__ServiceEventInfo__get_individual_type_description_source(NULL);
    constructed = true;
  }
  return &source_sequence;
}
