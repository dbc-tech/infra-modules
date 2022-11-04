variable "environment" {
  type        = string
  description = "The environment the application is running in"
}

variable "front_door_profile_id" {
  type        = string
  description = "The profile id of the frontdoor"
}

variable "session_affinity_enabled" {
  type        = bool
  default     = true
  description = "Whether to allow session affinity on this frontdoor"
}

variable "restore_traffic_time_to_healed_or_new_endpoint_in_minutes" {
  default     = 5
  type        = number
  description = "The time in minutes to wait before routing traffic to the healed or newly provisioned endpoint"
}

variable "health_probe_interval_in_seconds" {
  default     = 240
  type        = number
  description = "The interval in seconds between health probes"
}

variable "health_probe_path" {
  default     = "/"
  type        = string
  description = "The path to use for the health probe"
}

variable "health_probe_protocol" {
  default     = "Https"
  type        = string
  description = "The protocol to use for the health probe"
}

variable "health_probe_request_type" {
  default     = "HEAD"
  type        = string
  description = "health probe request type"
}

variable "load_balancing_additional_latency_milliseconds" {
  default     = 0
  type        = number
  description = "The additional latency in milliseconds for load balancing"
}

variable "load_balancing_sample_size" {
  default     = 16
  type        = number
  description = "The number of samples to consider for load balancing decisions"
}

variable "load_balancing_successful_samples_required" {
  default     = 3
  type        = number
  description = "The number of samples within the sample period that must succeed"
}