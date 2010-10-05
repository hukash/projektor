security {

	// see DefaultSecurityConfig.groovy for all settable/overridable properties

	active = true

	loginUserDomainClass = "com.projektorapp.User"
	authorityDomainClass = "com.projektorapp.Role"

    useRequestMapDomainClass = false

    useControllerAnnotations = true
}
