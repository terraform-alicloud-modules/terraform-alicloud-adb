package test

import (
	"fmt"
	"github.com/gruntwork-io/terratest/modules/random"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// An example of how to test the simple Terraform module in examples/terraform-basic-example using Terratest.
// Make sure you have the dep binary, https://github.com/golang/dep
// Run 'dep ensure' before run test cases.

func TestTerraformBasicExampleNew(t *testing.T) {
	t.Parallel()
	uniqueId := random.Random(100, 1000)
	uniqueName := fmt.Sprintf("tf-testacc%d.aliyun.com", uniqueId)
	name := uniqueName
	description := "Test new adb again."
	creation := "ADB"
	category := "Cluster"
	class := "C8"
	nodeCount := "4"
	nodeStorage := "400"
	mode := "reserver"
	clusterVersion := "3.0"
	paymentType := "PayAsYouGo"
	maintainTime := "23:00Z-00:00Z"
	tagsCreated := "TF-update"
	tagsFor := "acceptance-test-update"
	securityIps := []string{
		"10.168.1.12", "10.168.1.11",
	}
	vpcCidrBlock := "172.16.0.0/16"
	vswitchCidrBlock := "172.16.0.0/24"

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "./basic/",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"name":               name,
			"description":        description,
			"creation":           creation,
			"category":           category,
			"class":              class,
			"node_count":         nodeCount,
			"node_storage":       nodeStorage,
			"mode":               mode,
			"cluster_version":    clusterVersion,
			"payment_type":       paymentType,
			"maintain_time":      maintainTime,
			"tags_created":       tagsCreated,
			"tags_for":           tagsFor,
			"security_ips":       securityIps,
			"vpc_cidr_block":     vpcCidrBlock,
			"vswitch_cidr_block": vswitchCidrBlock,
		},

		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: false,
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the values of output variables
	thisDescription := terraform.OutputMap(t, terraformOptions, "this_description")
	thisDbClusterCategory := terraform.Output(t, terraformOptions, "this_db_cluster_category")
	thisDbNodeCount := terraform.Output(t, terraformOptions, "this_db_node_count")
	thisPaymentType := terraform.Output(t, terraformOptions, "this_payment_type")

	// Verify we're getting back the outputs we expect
	assert.Equal(t, thisDescription, description)
	assert.Equal(t, thisDbClusterCategory, category)
	assert.Equal(t, thisDbNodeCount, nodeCount)
	assert.Equal(t, thisPaymentType, paymentType)
}
