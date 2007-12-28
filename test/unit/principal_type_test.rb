require File.dirname(__FILE__) + '/../test_helper'

class PrincipalTypeTest < Test::Unit::TestCase
  fixtures :principal_types

  def test_crud
    aNewPrincipalType = PrincipalType.new(
                          :name => "New Test Principal Type"
                        )
    assert aNewPrincipalType.save

    principalTypeFromFixture = principal_types(:password)
    
    assert_equal "password", principalTypeFromFixture.name
    
    aNewPrincipalType.name = "updated name"
    assert aNewPrincipalType.save
    aNewPrincipalType.reload
    
    assert_equal "updated name", aNewPrincipalType.name
    
    assert aNewPrincipalType.destroy

  end
end
