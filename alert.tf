resource google_monitoring_alert_policy "adminclusterAPI4xx10" {
  project = var.project_id
 display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterAPI4xx10|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }

 conditions{
     display_name= "GKE on-prem admin cluster API server error count ratio: 400s error-response counts / all response counts"
     condition_threshold {
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:4..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name"]
                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name"]
                      per_series_aligner= "ALIGN_DELTA"
                    }
                 comparison= "COMPARISON_GT"
                 threshold_value= 0.1
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]

}

resource google_monitoring_alert_policy "adminclusterAPI4xx_5" {
  project = var.project_id
 display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterAPI4xx5|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }

 conditions{
     display_name= "GKE on-prem admin cluster API server error count ratio: 400s error-response counts / all response counts"
     condition_threshold {
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:4..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name"]
                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name"]
                      per_series_aligner= "ALIGN_DELTA"
                    }
                 comparison= "COMPARISON_GT"
                 threshold_value= 0.05
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]

}

resource google_monitoring_alert_policy "adminclusterAPI5xx" {
  project = var.project_id
 display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterAPI5xx5|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }

 conditions{
     display_name= "GKE on-prem admin cluster API server error count ratio: 500s error-response counts / all response counts"
     condition_threshold {
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:5..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name"]
                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name"]
                      per_series_aligner= "ALIGN_DELTA"
                    }
                 comparison= "COMPARISON_GT"
                 threshold_value= 0.05
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]

}


resource google_monitoring_alert_policy "adminclusterAPI5xx10" {
  project = var.project_id
 display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterAPI5xx10|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }

 conditions{
     display_name= "GKE on-prem admin cluster API server error count ratio: 500s error-response counts / all response counts"
     condition_threshold {
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:5..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name"]
                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name"]
                      per_series_aligner= "ALIGN_DELTA"
                    }
                 comparison= "COMPARISON_GT"
                 threshold_value= 0.1
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]

}

resource google_monitoring_alert_policy "userclusterAPI5xx5" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterAPI5xx5|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{
            display_name= "GKE on-prem user cluster API server error count ratio: 500s error-response counts / all response counts"
            condition_threshold{
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:5..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name",
                        "resource.label.namespace_name"]

                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name",
                          "resource.label.namespace_name"]

                      per_series_aligner= "ALIGN_DELTA"
                    }
                comparison= "COMPARISON_GT"
                threshold_value= 0.05
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]


}



resource google_monitoring_alert_policy "userclusterAPI5xx10" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterAPI5xx10|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{
            display_name= "GKE on-prem user cluster API server error count ratio: 500s error-response counts / all response counts"
            condition_threshold{
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:5..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name",
                        "resource.label.namespace_name"]

                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name",
                          "resource.label.namespace_name"]

                      per_series_aligner= "ALIGN_DELTA"
                    }
                comparison= "COMPARISON_GT"
                threshold_value= 0.1
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]


}


resource google_monitoring_alert_policy "userclusterAPI4xx5" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterAPI4xx5|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{
            display_name= "GKE on-prem user cluster API server error count ratio: 400s error-response counts / all response counts"
            condition_threshold{
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:4..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name",
                        "resource.label.namespace_name"]

                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name",
                          "resource.label.namespace_name"]

                      per_series_aligner= "ALIGN_DELTA"
                    }
                comparison= "COMPARISON_GT"
                threshold_value= 0.05
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]


}


resource google_monitoring_alert_policy "userclusterAPI4xx10" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterAPI4xx10|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{
            display_name= "GKE on-prem user cluster API server error count ratio: 400s error-response counts / all response counts"
            condition_threshold{
                 filter= "metric.label.\"code\"=monitoring.regex.full_match(\"^(?:4..)$\") AND metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                aggregations {
                    alignment_period= "300s"
                    cross_series_reducer= "REDUCE_SUM"
                    group_by_fields= [
                        "resource.label.project_id",
                        "resource.label.location",
                        "resource.label.cluster_name",
                        "resource.label.namespace_name"]

                    per_series_aligner= "ALIGN_DELTA"
                }
                denominator_filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_request_total\" AND resource.type=\"k8s_container\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
                denominator_aggregations {
                      alignment_period= "300s"
                      cross_series_reducer= "REDUCE_SUM"
                      group_by_fields= [
                          "resource.label.project_id",
                          "resource.label.location",
                          "resource.label.cluster_name",
                          "resource.label.namespace_name"]

                      per_series_aligner= "ALIGN_DELTA"
                    }
                comparison= "COMPARISON_GT"
                threshold_value= 0.1
                duration= "600s"
                trigger {
                    count= 1
                }
            }
        }
  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]


}



resource google_monitoring_alert_policy "AdminclusterAPIDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterAPIDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem admin cluster API server is up"
      condition_absent{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.project_id",
              "resource.label.location",
              "resource.label.cluster_name"]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        duration= "300s"
        filter= "resource.type=\"k8s_container\" AND metric.type=\"kubernetes.io/${local.workload}/up\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-apiserver\")"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "adminclusterControlManagerDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterControlManagerDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= " GKE on-prem admin cluster control manager is up (critical)"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/up'\n| filter  (resource.container_name =~ 'kube-controller-manager')\n| group_by 1m, [value_up_mean: mean(value.up)]\n| every 1m\n| group_by\n    [resource.project_id, resource.location, resource.cluster_name,\n     resource.namespace_name],\n    [value_up_mean_aggregate: aggregate(value_up_mean)]\n| absent_for 300s"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "adminclusterEtcdDown" {
  project = var.project_id
  display_name= " ${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterEtcdDown|critical|metric"
  conditions{

      display_name= " ${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterEtcdDown|critical|metric"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/up'\n| filter  (resource.container_name =~ 'kube-controller-manager')\n| group_by 1m, [value_up_mean: mean(value.up)]\n| every 1m\n| group_by\n    [resource.project_id, resource.location, resource.cluster_name,\n     resource.namespace_name],\n    [value_up_mean_aggregate: aggregate(value_up_mean)]\n| absent_for 300s"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "adminclusterSchedDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|adminclusterSchedDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem admin cluster scheduler is up"
      condition_absent{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.project_id",
              "resource.label.location",
              "resource.label.cluster_name"]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        duration= "300s"
        filter= "resource.type=\"k8s_container\" AND metric.type=\"kubernetes.io/${local.workload}/up\" AND resource.label.\"container_name\"=monitoring.regex.full_match(\"kube-scheduler\")"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_container_controlplane_etcdOddnum_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|etcdOddnum|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|etcdOddnum|critical|metric"
      condition_monitoring_query_language{
        duration= "3600s"
        query= "def is_even(input) = $input % 2 == 0;\r\ndef is_odd(input) = $input % 2 != 0;\r\n\r\nfetch k8s_container\r\n| metric 'kubernetes.io/${local.workload}/etcd_server_id'\r\n| group_by 5m, [row_count: row_count()]\r\n| every 5m\r\n| group_by [], [row_count: row_count()]\r\n| condition @is_even(row_count)"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_ens192isdown_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|ens192isdown|critical|metric"
  documentation{
    content= "Please contact the cloud support team."
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "node_network_up for ens192 [MEAN]"
      condition_monitoring_query_language{
        duration= "300s"
        query= "fetch k8s_node\n| metric 'kubernetes.io/${local.workload}/node_network_up'\n| filter (metric.device == 'ens192')\n| group_by 5m, [value_node_network_up_mean: mean(value.node_network_up)]\n| every 5m\n| condition val() = 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_node_diskPressureTrue_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|diskPressureTrue|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_node_status_condition for DiskPressure, true [MEAN]"
      condition_monitoring_query_language{
        duration= "120s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_node_status_condition'\n| filter (metric.condition == 'DiskPressure' && metric.status == 'true')\n| group_by 5m,\n    [value_kube_node_status_condition_mean:\n       mean(value.kube_node_status_condition)]\n| every 5m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_node_failedGRPC5_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|failedGRPC5|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "${local.workload}|${local.environment}|k8s_node|node|failedGRPC5|critical|metric"
      condition_monitoring_query_language{
        duration= "120s"
        query= "{\r\nt_grpc:\r\nfetch k8s_container\r\n| metric 'kubernetes.io/${local.workload}/grpc_server_handled_total'\r\n| filter (metric.grpc_code != 'OK' && metric.grpc_service != 'etcdserverpb.Watch')\r\n| align rate(1m)\r\n| every 1m\r\n| group_by [metric.grpc_service, metric.grpc_method],\r\n    [value_grpc_server_handled_total_aggregate:\r\n       aggregate(value.grpc_server_handled_total)]\r\n;t_total:\r\nfetch k8s_container\r\n| metric 'kubernetes.io/anthos/grpc_server_handled_total'\r\n| align rate(1m)\r\n| every 1m\r\n| group_by [metric.grpc_service, metric.grpc_method],\r\n    [value_grpc_server_handled_total_aggregate:\r\n       aggregate(value.grpc_server_handled_total)]\r\n}\r\n| join\r\n| value[percent: (t_grpc / t_total) * 100 ]\r\n| cast_units ('%')\r\n|condition val() > .05 '{not_a_unit}'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_node_memoryPressureTrue_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|memoryPressureTrue|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_node_status_condition for MemoryPressure, true [MEAN]"
      condition_monitoring_query_language{
        duration= "120s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_node_status_condition'\n| filter (metric.condition == 'MemoryPressure' && metric.status == 'true')\n| group_by 5m,\n    [value_kube_node_status_condition_mean:\n       mean(value.kube_node_status_condition)]\n| every 5m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_node_networkUnavailable_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|networkUnavailable|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_node_status_condition for NetworkUnavailable, true [MEAN]"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_node_status_condition'\n| filter (metric.condition == 'NetworkUnavailable' && metric.status == 'true')\n| group_by 5m,\n    [value_kube_node_status_condition_mean:\n       mean(value.kube_node_status_condition)]\n| every 5m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_node_pidPressureTrue_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|pidPressureTrue|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_node_status_condition for PIDPressure, true [MEAN]"
      condition_monitoring_query_language{
        duration= "120s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_node_status_condition'\n| filter (metric.condition == 'PIDPressure' && metric.status == 'true')\n| group_by 5m,\n    [value_kube_node_status_condition_mean:\n       mean(value.kube_node_status_condition)]\n| every 5m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_k8s_node_node_readyFalse_critical_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|readyFalse|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_node_status_condition for Ready, false [MEAN]"
      condition_threshold{
        aggregations{
      
            alignment_period= "600s"
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_GT"
        duration= "600s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/kube_node_status_condition\" resource.type=\"k8s_container\" metric.label.\"condition\"=\"Ready\" metric.label.\"status\"=\"false\""
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "${local.workload}_${local.environment}_logbased_node_exceedQuota_crit_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|logbased|node|exceedQuota|critical|metric"
  documentation{
    content= "Please, search for the exceed quota in the log explorer"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "logging/user/exceed"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "0s"
        filter= "metric.type=\"logging.googleapis.com/user/exceeded_quota\""
        threshold_value= 1
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "${local.workload}_${local.environment}_logbased_node_oomkill_crit_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|logbased|node|oomkill|critical|metric"
  documentation{
    content= "Please, search for the oom kill in the log explorer"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "logging/user/oom [RATE]"
      condition_threshold{
        aggregations{
      
            alignment_period= "60s"
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "0s"
        filter= "metric.type=\"logging.googleapis.com/user/oom\""
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "${local.workload}_${local.environment}_pvc_pv_abletoScaleFalse_metric" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pv|abletoScaleFalse|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_hpa_status_condition for false, AbleToScale [MEAN]"
      condition_monitoring_query_language{
        duration= "120s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_hpa_status_condition'\n| filter (metric.condition == 'AbleToScale' && metric.status == 'false' && metric.namespace != 'gke-system')\n| group_by 2m,\n    [value_kube_hpa_status_condition_mean:\n       mean(value.kube_hpa_status_condition)]\n| every 2m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "apiserverCertExp1d" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|apiserverCertExp1d|critical|metric"
  documentation{
    content= "Please renew certificate. Certificate will expire in 24hrs and contact the cloud support team."
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "apiserver_client_certificate_expiration_seconds (critical)"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            cross_series_reducer= "REDUCE_PERCENTILE_50"
            per_series_aligner= "ALIGN_DELTA"
          }
      
        comparison= "COMPARISON_LT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_client_certificate_expiration_seconds\" resource.type=\"k8s_container\""
        threshold_value= 86400
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "apiserverCertExp1w" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|apiserverCertExp1w|major|metric"
  documentation{
    content= "Contact the cloud support team to renew the certificate"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "apiserver_client_certificate_expiration_seconds (major)"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            cross_series_reducer= "REDUCE_PERCENTILE_50"
            per_series_aligner= "ALIGN_DELTA"
          }
      
        comparison= "COMPARISON_LT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/apiserver_client_certificate_expiration_seconds\" resource.type=\"k8s_container\""
        threshold_value= 604800
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "cpuOver90" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|namespace|cpuOver90|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "KE on-prem namespace CPU usage over 90% for 30 min (critical)"
      condition_monitoring_query_language{
        duration= "1800s"
        query= "fetch k8s_node\n| metric 'kubernetes.io/${local.workload}/container_cpu_usage_seconds_total'\n| filter (metric.container != 'POD' && metric.container =~ '.*.*')\n| align rate(1m)\n| every 1m\n| group_by [metric.namespace],\n    [value_container_cpu_usage_seconds_total_max:\n       max(value.container_cpu_usage_seconds_total)]\n| condition val() > .90 '1/s'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "cpuUsage100" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|cpuUsage100|critical|metric"
  documentation{
    content= "Please contact cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem Node CPU utilization at 100% for 30 min (critical)"
      condition_monitoring_query_language{
        duration= "1800s"
        query= "{ t_busy:\n    fetch k8s_node::kubernetes.io/${local.workload}/node_cpu_seconds_total\n    | window 10m\n    | filter (metric.mode != 'idle')\n    | group_by [resource.cluster_name, resource.node_name]\n; t_total:\n    fetch k8s_node::kubernetes.io/anthos/node_cpu_seconds_total\n    | window 10m\n    | group_by [resource.cluster_name, resource.node_name] }\n| join\n| value [cpu_usage_percent: (t_busy / t_total) * 100]\n| cast_units ('%')\n| condition val() >= 100 '%'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "cpuUsage90" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|cpuUsage90|major|metric"
  documentation{
    content= "Please contact cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem Node CPU usage over 90% for 30 min (major)"
      condition_monitoring_query_language{
        duration= "1800s"
        query= "fetch k8s_node\r\n| metric 'kubernetes.io/${local.workload}/container_cpu_usage_seconds_total'\r\n| filter (metric.container != 'POD' && metric.container =~ '.*.*')\r\n| align rate(1m)\r\n| every 1m\r\n| group_by [resource.node_name],\r\n    [value_container_cpu_usage_seconds_total_max:\r\n       max(value.container_cpu_usage_seconds_total)]\r\n| condition val() > .90 '1/s'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "crashLoop" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|pod|crashLoop|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_pod_container_status_restarts_total (filtered) (grouped) [SUM]"
      condition_monitoring_query_language{
        duration= "3600s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_pod_container_status_restarts_total'\n| filter\n    (metric.container != 'git-sync'\n     && metric.container != 'stackdriver-log-forwarder'\n     && metric.container != 'stackdriver-log-aggregator'\n     && metric.container != 'importer')\n| align delta(15m)\n| every 15m\n| group_by\n    [resource.project_id, resource.location, resource.cluster_name,\n     metric.namespace, metric.container, metric.pod],\n    [value_kube_pod_container_status_restarts_total_aggregate:\n       aggregate(value.kube_pod_container_status_restarts_total)]\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "desiredVSrunningPods" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|deploy|desiredVSrunningPods|major|metric"
  documentation{
    content= "Please contact cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem number of desired pods vs number of currently running"
      condition_monitoring_query_language{
        duration= "0s"
        query= "{ t_spec:\n    fetch k8s_container::kubernetes.io/${local.workload}/kube_deployment_spec_replicas\n    | window 10m\n    | group_by [resource.cluster_name, metric.deployment]\n; t_status:\n    fetch k8s_container::kubernetes.io/anthos/kube_deployment_status_replicas\n    | window 10m\n    | group_by [resource.cluster_name, metric.deployment]\n}\n| join\n| value [ready_rate:(t_spec/t_status)]\n|condition val() <> 1\n"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "diskinodesLess10" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|diskinodesLess10|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "container_fs_inodes_free less 10%[MEAN]"
      condition_monitoring_query_language{
        duration= "300s"
        query= "{ t_inodes_total:\n    fetch k8s_node::kubernetes.io/${local.workload}/container_fs_inodes_total\n    | window 10m\n    | group_by [resource.node_name, metric.device]\n; t_inodes_free:\n    fetch k8s_node::kubernetes.io/anthos/container_fs_inodes_free\n    | window 10m }\n| group_by [resource.node_name, metric.device]\n| join\n| value [ready_rate: (t_inodes_free / t_inodes_total * 100)]\n| condition val() <= 10"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "diskLess10" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|diskLess10|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "disk almost full 10%"
      condition_monitoring_query_language{
        duration= "600s"
        query= "{ fetch k8s_node\n  | metric 'kubernetes.io/${local.workload}/node_filesystem_avail_bytes'\n  | every 1m\n  | window 10m\n  | filter (metric.fstype = \"ext4\")\n  | group_by\n      [resource.project_id, resource.location, resource.cluster_name,\n       resource.node_name]\n; fetch k8s_node\n  | metric 'kubernetes.io/anthos/node_filesystem_size_bytes'\n  | every 1m\n  | window 10m\n  | filter (metric.fstype = \"ext4\")\n  | group_by\n      [resource.project_id, resource.location, resource.cluster_name,\n       resource.node_name] }\n| join\n| value [int_floor((val(0) / val(1)) * 100)]\n| condition val() < 10"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "diskLess5" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|diskLess5|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "disk almost full 5% (critical)"
      condition_monitoring_query_language{
        duration= "600s"
        query= "{ fetch k8s_node\r\n  | metric 'kubernetes.io/${local.workload}/node_filesystem_avail_bytes'\r\n  | every 1m\r\n  | window 10m\r\n  | filter (metric.fstype = \"ext4\")\r\n  | group_by\r\n      [resource.project_id, resource.location, resource.cluster_name,\r\n       resource.node_name]\r\n; fetch k8s_node\r\n  | metric 'kubernetes.io/anthos/node_filesystem_size_bytes'\r\n  | every 1m\r\n  | window 10m\r\n  | filter (metric.fstype = \"ext4\")\r\n  | group_by\r\n      [resource.project_id, resource.location, resource.cluster_name,\r\n       resource.node_name] }\r\n| join\r\n| value [int_floor((val(0) / val(1)) * 100)]\r\n| condition val() < 5"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "diskRead50mb" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|diskRead50mb|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem node high node disk read above 50m/s (critical)"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.node_name"]
          
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "300s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/node_disk_read_time_seconds_total\" resource.type=\"k8s_node\""
        threshold_value= 50000000
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "diskspace10" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pv|diskspace10|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kubelet_volume_stats_available_bytes [MEAN] (major 10%)"
      condition_monitoring_query_language{
        duration= "300s"
        query= "{ t_capacity:\n    fetch k8s_node\n| metric 'kubernetes.io/${local.workload}/kubelet_volume_stats_capacity_bytes'\n|window 5m\n| group_by 5m,\n; t_available:\nfetch k8s_node\n| metric 'kubernetes.io/anthos/kubelet_volume_stats_available_bytes'\n|window 5m\n| group_by 5m,\n}\n| join\n| value [disk_free:((val(1)/val(0))*100)]\n| condition val() < 10"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "diskspace5" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pv|diskspace5|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "Kubernetes Volume disk space 5% (critical)"
      condition_monitoring_query_language{
        duration= "300s"
        query= "{ t_capacity:\r\n    fetch k8s_node\r\n| metric 'kubernetes.io/${local.workload}/kubelet_volume_stats_capacity_bytes'\r\n|window 5m\r\n| group_by 5m,\r\n; t_available:\r\nfetch k8s_node\r\n| metric 'kubernetes.io/anthos/kubelet_volume_stats_available_bytes'\r\n|window 5m\r\n| group_by 5m,\r\n}\r\n| join\r\n| value [disk_free:((val(1)/val(0))*100)]\r\n| condition val() < 5"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "diskWrite50mb" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|diskWrite50mb|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "node_disk_write_time_seconds_total by label.node_name [SUM]"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.node_name"]
          
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "300s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/node_disk_write_time_seconds_total\" resource.type=\"k8s_node\""
        threshold_value= 50000000
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "etcdNoleader" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|etcdNoleader|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "etcd cluster has no leader"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container:: kubernetes.io/${local.workload}/etcd_server_has_leader\r\n| window 2m\r\n| group_by [resource.namespace_name,resource.pod_name]\r\n|condition val() <> 1\r\n\r\n"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "fsCapacity1G" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|fsCapacity1G|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "node_filesystem_avail_bytes by label.mountpoint, label.node_name [MEAN]"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            cross_series_reducer= "REDUCE_MEAN"
            group_by_fields= [
              "metric.label.mountpoint",
              "resource.label.node_name"]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_LT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/node_filesystem_avail_bytes\" resource.type=\"k8s_node\" metric.label.\"fstype\"=\"ext4\""
        threshold_value= 1000000000
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "fsReadonly" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|fsReadonly|critical|metric"
  documentation{
    content= "This alert is from project $${project}"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "node_filesystem_readonly [MEAN]"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_GT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/node_filesystem_readonly\" resource.type=\"k8s_node\""
        threshold_value= 1
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "highnumunavailablepods" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|deploy|highnumunavailablepods|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_deployment_status_replicas_unavailable [COUNT]"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            cross_series_reducer= "REDUCE_COUNT"
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_GT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/kube_deployment_status_replicas_unavailable\" resource.type=\"k8s_container\""
        threshold_value= 100
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "ingressgwDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|ingressgwDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_service_status_load_balancer_ingress [MEAN]"
      condition_monitoring_query_language{
        duration= "60s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_service_status_load_balancer_ingress'\n| group_by 5m,\n    [value_kube_service_status_load_balancer_ingress_mean:\n       mean(value.kube_service_status_load_balancer_ingress)]\n| every 5m\n| condition val() <> 1"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "jobCompletions" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|jobs|jobCompletions|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_job_spec_completions [MEAN]"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_job_spec_completions'\n| group_by 5m,\n    [value_kube_job_spec_completions_mean:\n       mean(value.kube_job_spec_completions)]\n| every 5m\n| condition val() <> 1"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "memFree10" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|memFree10|major|metric"
  documentation{
    content= "Please contact cloud support team."
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem Node reaches 10% of free memory (major)"
      condition_monitoring_query_language{
        duration= "1800s"
        query= "{\r\nt_available:\r\nfetch k8s_node::kubernetes.io/${local.workload}/node_memory_MemAvailable_bytes\r\n| window 10m\r\n| group_by [resource.cluster_name,resource.node_name]\r\n; t_total:\r\nfetch k8s_node::kubernetes.io/anthos/node_memory_MemTotal_bytes\r\n| window 10m\r\n| group_by [resource.cluster_name,resource.node_name]\r\n}\r\n| join\r\n| value[memory_usage_percent: (t_available / t_total) * 100 ]\r\n| cast_units ('%')\r\n|condition val() <= .10 '{not_a_unit}'\r\n"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "memoryPressureStalled" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|memoryPressureStalled|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "node_pressure_memory_stalled_seconds_total by label.node_name [MAX]"
      condition_threshold{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_MAX"
            group_by_fields= [
              "resource.label.node_name"]
          
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/node_pressure_memory_stalled_seconds_total\" resource.type=\"k8s_node\""
        threshold_value= 0.1
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "memoryPressureWaiting" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|memoryPressureWaiting|critical|metric"
  documentation{
    content= "label.node_name [MAX]"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "node_pressure_memory_waiting_seconds_total by label.node_name [MAX]"
      condition_monitoring_query_language{
        duration= "900s"
        query= "fetch k8s_node\n| metric 'kubernetes.io/${local.workload}/node_pressure_memory_waiting_seconds_total'\n| align rate(1m)\n| every 1m\n| group_by [resource.node_name],\n    [value_node_pressure_memory_waiting_seconds_total_max:\n       max(value.node_pressure_memory_waiting_seconds_total)]\n| condition val() > 1 '1/s'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "networkReceive100mb" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|networkReceive100mb|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "container_network_receive_bytes_total by label.node_name [SUM]"
      condition_threshold{
        aggregations{
      
            alignment_period= "1800s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.node_name"]
          
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "60s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/container_network_receive_bytes_total\" resource.type=\"k8s_node\""
        threshold_value= 100000000
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "networkTransmit100mb" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_node|node|networkTransmit100mb|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem node high transmit network traffic above 100m/s (critical)"
      condition_threshold{
        aggregations{
      
            alignment_period= "1800s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.node_name"]
          
            per_series_aligner= "ALIGN_RATE"
          }
      
        comparison= "COMPARISON_GT"
        duration= "60s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/container_network_transmit_bytes_total\" resource.type=\"k8s_node\""
        threshold_value= 100000000
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "ns_statusPhase" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|namespace|statusPhase|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_namespace_status_phase [MEAN]"
      condition_monitoring_query_language{
        duration= "120s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_namespace_status_phase'\n| filter (metric.phase == 'Terminating')\n| group_by 2m,\n    [value_kube_namespace_status_phase_mean:\n       mean(value.kube_namespace_status_phase)]\n| every 2m\n|condition val() <> 0"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "numMisscheduled" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|daemonset|numMisscheduled|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "Daemonset kube_daemonset_status_number_misscheduled"
      condition_monitoring_query_language{
        duration= "60s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_daemonset_status_number_misscheduled'\n| group_by 5m,\n    [value_kube_daemonset_status_number_misscheduled_mean:\n       mean(value.kube_daemonset_status_number_misscheduled)]\n| every 5m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "numUnavailable" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|daemonset|numUnavailable|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "Daemonset kube_daemonset_status_number_unavailable"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_daemonset_status_number_unavailable'\n| filter\n    (metric.daemonset != 'stackdriver-log-forwarder')\n| group_by 5m,\n    [value_kube_daemonset_status_number_unavailable_mean:\n       mean(value.kube_daemonset_status_number_unavailable)]\n| every 5m\n|condition val() <> 0"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "observVSmetadataGeneration" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|deploy|observVSmetadataGeneration|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "status_observ_generataion_different_from_metadata_generation"
      condition_monitoring_query_language{
        duration= "600s"
        query= "{ t_status:\n    fetch k8s_container::kubernetes.io/${local.workload}/kube_deployment_status_observed_generation\n    | window 10m\n    | group_by [resource.cluster_name, metric.deployment]\n; t_metadata:\n    fetch k8s_container::kubernetes.io/anthos/kube_deployment_metadata_generation\n    | window 10m\n    | group_by [resource.cluster_name, metric.deployment]\n}\n| join\n| value [ready_rate:(t_status/t_metadata)]\n|condition val() <> 1\n\n\n"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "pvcStatusPhaseLost" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pvc|pvcStatusPhaseLost|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_persistentvolumeclaim_status_phase for Lost [MEAN]"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_GT"
        duration= "120s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/kube_persistentvolumeclaim_status_phase\" resource.type=\"k8s_container\" metric.label.\"phase\"=\"Lost\""
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "pvcStatusPhasePending" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pvc|pvcStatusPhasePending|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_persistentvolumeclaim_status_phase for Pending [MEAN]"
      condition_threshold{
        aggregations{
      
            alignment_period= "120s"
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_GT"
        duration= "120s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/kube_persistentvolumeclaim_status_phase\" resource.type=\"k8s_container\" metric.label.\"phase\"=\"Pending\""
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "pvStatusPhaseFailed" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pv|pvStatusPhaseFailed|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_persistentvolume_status_phase for Failed [MEAN]"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_persistentvolume_status_phase'\n| filter (metric.phase == 'Failed')\n| group_by 2m,\n    [value_kube_persistentvolume_status_phase_mean:\n       mean(value.kube_persistentvolume_status_phase)]\n| every 2m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "pvStatusPhasePending" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pvc|pv|pvStatusPhasePending|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_persistentvolume_status_phase for Pending [MEAN]"
      condition_monitoring_query_language{
        duration= "0s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_persistentvolume_status_phase'\n| filter (metric.phase == 'Pending')\n| group_by 2m,\n    [value_kube_persistentvolume_status_phase_mean:\n       mean(value.kube_persistentvolume_status_phase)]\n| every 2m\n| condition val() > 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "readyVScurrentReplicas" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|statefullset|readyVScurrentReplicas|critical|metric"
  documentation{
    content= "Please contact the workload support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "K8s_workload resources status - stateful set-replicas ready rateresources status - stateful set-replicas ready rate"
      condition_monitoring_query_language{
        duration= "0s"
        query= "{ ready_ss:\n    fetch\n      k8s_container::kubernetes.io/${local.workload}/kube_statefulset_status_replicas_ready\n    | window 10m\n; desired_ss:\n    fetch k8s_container::kubernetes.io/anthos/kube_statefulset_replicas\n    | window 10m }\n| join\n| value [ready_rate: (ready_ss / desired_ss)]\n| condition val() <> 1"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "specVSreadyReplica" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|replicaset|specVSreadyReplica|major|metric"
  documentation{
    content= "Please contact the replicaset owner."
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "replicaset spec vs status ready (major)"
      condition_monitoring_query_language{
        duration= "600s"
        query= "{ t_spec:\r\n    fetch k8s_container::kubernetes.io/${local.workload}/kube_replicaset_spec_replicas\r\n    | window 10m\r\n    | group_by [resource.cluster_name, metric.replicaset]\r\n; t_status:\r\n    fetch k8s_container::kubernetes.io/anthos/kube_replicaset_status_ready_replicas\r\n    | window 10m\r\n    | group_by [resource.cluster_name, metric.replicaset]\r\n}\r\n| join\r\n| value [ready_rate:(t_status/t_spec)]\r\n|condition val() <> 1"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}

resource google_monitoring_alert_policy "statusFail" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|jobs|statusFail|major|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_job_status_failed [MEAN]"
      condition_threshold{
        aggregations{
      
            alignment_period= "300s"
            per_series_aligner= "ALIGN_MEAN"
          }
      
        comparison= "COMPARISON_GT"
        duration= "0s"
        filter= "metric.type=\"kubernetes.io/${local.workload}/kube_job_status_failed\" resource.type=\"k8s_container\""
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "statusPhase" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|pod|statusPhase|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "kube_pod_status_phase [MEAN]"
      condition_monitoring_query_language{
        duration= "900s"
        query= "fetch k8s_container\n| metric 'kubernetes.io/${local.workload}/kube_pod_status_phase'\n| filter\n    (metric.phase == 'Failed' || metric.phase == 'Pending'\n     || metric.phase == 'Unknown')\n| group_by 5m,\n    [value_kube_pod_status_phase_mean: mean(value.kube_pod_status_phase)]\n| every 5m\n| condition val () > 0"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "unackedSubmessage" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|pubsub|sub|unackedSubmessage|critical|metric"
  documentation{
    content= "Please go look at the subscription section in GCP"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "Unacked messages [MEAN]"
      condition_monitoring_query_language{
        duration= "3600s"
        query= "fetch pubsub_subscription\n| metric 'pubsub.googleapis.com/subscription/num_undelivered_messages'\n| group_by 5m,\n    [value_num_undelivered_messages_mean: mean(value.num_undelivered_messages)]\n| every 5m\n|condition val() > 100 "
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}


resource google_monitoring_alert_policy "userclusterAPIDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterAPIDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem user cluster API server is up"
      condition_absent{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.project_id",
              "resource.label.location",
              "resource.label.cluster_name",
              "resource.label.namespace_name"]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        duration= "300s"
        filter= "resource.type=\"k8s_container\" AND metric.type=\"kubernetes.io/${local.workload}/up\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-apiserver.*\")"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "userclusterControlManagerDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterControlManagerDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem user cluster controller manager is up"
      condition_absent{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.project_id",
              "resource.label.location",
              "resource.label.cluster_name",
              "resource.label.namespace_name"]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        duration= "300s"
        filter= "resource.type=\"k8s_container\" AND metric.type=\"kubernetes.io/${local.workload}/up\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-controller-manager.*\")"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "userclusterEtcdDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterEtcdDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem user cluster etcd is up"
      condition_absent{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.project_id",
              "resource.label.location",
              "resource.label.cluster_name",
              "resource.label.namespace_name"]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        duration= "300s"
        filter= "resource.type=\"k8s_container\" AND metric.type=\"kubernetes.io/${local.workload}/up\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*etcd.*\")"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "userclusterSchedDown" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|controlplane|userclusterSchedDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "GKE on-prem user cluster scheduler is up"
      condition_absent{
        aggregations{
      
            alignment_period= "60s"
            cross_series_reducer= "REDUCE_SUM"
            group_by_fields= [
              "resource.label.project_id",
              "resource.label.location",
              "resource.label.cluster_name",
              "resource.label.namespace_name",]
          
            per_series_aligner= "ALIGN_MEAN"
          }
      
        duration= "300s"
        filter= "resource.type=\"k8s_container\" AND metric.type=\"kubernetes.io/${local.workload}/up\" AND resource.label.\"namespace_name\"!=\"kube-system\" AND resource.label.\"pod_name\"=monitoring.regex.full_match(\".*kube-scheduler.*\")"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}
resource google_monitoring_alert_policy "stackdriver" {
  project = var.project_id
  display_name= "${local.workload}|${local.environment}|k8s_container|fluentbit|stackdriverDown|critical|metric"
  documentation{
    content= "Please contact the cloud support team"
    mime_type= "text/markdown"
  }
  conditions{

      display_name= "Container - fluentbit_output_stackdriver_successful_requests_total"
      condition_monitoring_query_language{
        duration= "3600s"
        query= "fetch k8s_container\n| metric\n    'kubernetes.io/${local.workload}/fluentbit_output_stackdriver_successful_requests_total'\n| align delta(5m)\n| every 5m\n| condition val() = 0 '1'"
        trigger{
          count= 1
        }
      }
    }

  combiner= "OR"
  notification_channels= [
    data.google_monitoring_notification_channel.default.name
  ]
}



