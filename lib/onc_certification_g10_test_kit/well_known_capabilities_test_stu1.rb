module ONCCertificationG10TestKit
  class SMARTWellKnownCapabilitiesTestSTU1 < SMARTAppLaunch::WellKnownCapabilitiesSTU1Test
    description %(
      A SMART on FHIR server SHALL convey its capabilities to app developers
      by listing the SMART core capabilities supported by their
      implementation within the Well-known configuration file. This test
      ensures that the capabilities required by this scenario are properly
      documented in the Well-known file.
    )
    id :g10_smart_well_known_capabilities_stu1

    run do
      instance_eval(&SMARTAppLaunch::WellKnownCapabilitiesSTU1Test.run)

      capabilities = JSON.parse(well_known_configuration)['capabilities']
      missing_capabilities = (config.options[:required_capabilities] || []) - capabilities
      assert missing_capabilities.empty?,
             "The following capabilities required for this scenario are missing: #{missing_capabilities.join(', ')}"
    end
  end
end
