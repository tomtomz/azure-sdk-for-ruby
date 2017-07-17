# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of an artifact deployment.
    #
    class ArtifactDeploymentStatusProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The deployment status of the artifact.
      attr_accessor :deployment_status

      # @return [Integer] The total count of the artifacts that were
      # successfully applied.
      attr_accessor :artifacts_applied

      # @return [Integer] The total count of the artifacts that were
      # tentatively applied.
      attr_accessor :total_artifacts


      #
      # Mapper for ArtifactDeploymentStatusProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArtifactDeploymentStatusProperties',
          type: {
            name: 'Composite',
            class_name: 'ArtifactDeploymentStatusProperties',
            model_properties: {
              deployment_status: {
                required: false,
                serialized_name: 'deploymentStatus',
                type: {
                  name: 'String'
                }
              },
              artifacts_applied: {
                required: false,
                serialized_name: 'artifactsApplied',
                type: {
                  name: 'Number'
                }
              },
              total_artifacts: {
                required: false,
                serialized_name: 'totalArtifacts',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
