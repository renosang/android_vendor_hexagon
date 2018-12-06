package android_hexagon
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
	Uses_generic_camera_parameter_library struct {
		Srcs []string
	}
	Uses_qcom_bsp_legacy struct {
		Cppflags []string
	}
	Uses_qti_camera_device struct {
		Cppflags []string
		Shared_libs []string
	}
	Has_legacy_mmap struct {
		Cppflags []string
	}
	Needs_prelink_support struct {
		Cppflags []string
	}
	Needs_non_pie_support struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`
	Specific_camera_parameter_library  *string `json:",omitempty"`
	Target_shim_libs  *string `json:",omitempty"`
	Uses_generic_camera_parameter_library  *bool `json:",omitempty"`
	Uses_qcom_bsp_legacy  *bool `json:",omitempty"`
	Uses_qti_camera_device  *bool `json:",omitempty"`
	Has_legacy_mmap  *bool `json:",omitempty"`
	Needs_prelink_support  *bool `json:",omitempty"`
	Needs_non_pie_support  *bool `json:",omitempty"`
}
