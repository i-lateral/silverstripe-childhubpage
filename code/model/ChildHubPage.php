<?php

class ChildHubPage extends Page
{
    
    /**
     * @var string
     */
    private static $icon = "childhubpage/images/grid.png";
    
    /**
     * @var string
     */
    private static $description = 'Display all children of this page as either a list or grid';
        
    private static $db = array(
        "ShowChildrenAs" => "Enum('Grid,List','Grid')",
        "ShowSideBar" => "Boolean"
    );
    
    public function getSettingsFields()
    {
        $fields = parent::getSettingsFields();

        $fields->addFieldsToTab(
            "Root.Settings",
            [
                DropdownField::create(
                    "ShowChildrenAs",
                    $this->fieldLabel("ShowChildrenAs"),
                    $this->dbobject("ShowChildrenAs")->enumValues()
                ),
                CheckboxField::create(
                    'ShowSideBar',
                    $this->fieldLabel("ShowSideBar")
                )
            ],
            "CanViewType"
        );

        return $fields;
    }
    
}
