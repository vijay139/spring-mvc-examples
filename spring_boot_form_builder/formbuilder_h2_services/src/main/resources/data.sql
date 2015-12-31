insert into ui_app values (1, 'vendor_management', 'Vendor Management');
insert into Ui_Form values(1, 'project', 1, 'Project', '', 'Form', 1, 'checkIfOneOfTheseIsPresentValueIsPresent', '{"when": "project_type != empty", "then": "start_date != empty"}' );
insert into Ui_Form values(2, 'supplier', 2, 'Supplier', '', 'Form', 1, '', '' );
insert into Ui_Form_Link values(2, 3, '', true);
insert into Ui_Form values(4, 'sow', 3, 'Sow', '', 'Form', 1, 'assertIfOneIsPresent', 'name,description' );
insert into Ui_Form values(3, 'country', 4, 'Country', '', 'Form', 1, 'assertIfAllPresent', 'name, country_code' );
insert into Ui_Form values(5, 'team_member', 5, 'Team Member', '', 'Form', 1, '', '' );
insert into Ui_Form values(6, 'project_rule_lookup', 6, 'Project Rule Lookup', '', 'Rule', 1, '', '' );
insert into Ui_Form values(7, 'citizenship_rule_lookup', 7, 'Citizenship Rule Lookup', '', 'Rule', 1, '', '' );
insert into uiRules values(1, 'assertIfAllPresent', 'import java.util.Map import java.util.List import com.formbuilder.rule.Evaluator rule "Values present" when $rule: Evaluator(!this.eval()) $list: List() then $list.add("One of %s cannot be empty"); end');
insert into uiRules values(2, 'assertIfOneIsPresent', 'import java.util.Map import java.util.List import com.formbuilder.rule.Evaluator rule "Values present" when $rule: Evaluator(!this.eval()) $list: List() then $list.add("One of %s cannot be empty"); end');
insert into uiRules values(3, 'checkIfOneOfTheseIsPresentValueIsPresent', 'import java.util.Map import java.util.List rule "Values present" when $map: Map(%s) $list: List() then if(%s) return; $list.add("%s"); end');
