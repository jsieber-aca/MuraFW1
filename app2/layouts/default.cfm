<cfsilent>
<!---

This file is part of MuraFW1
(c) Stephen J. Withington, Jr. | www.stephenwithington.com

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

	NOTES:

--->
</cfsilent>
<cfoutput>
	<div class="row-fluid">
		<h3>Application ##2</h3>
		<div>
			<ul class="nav nav-pills">
				<li<cfif rc.action eq 'app2:main.default'> class="active"</cfif>>
					<a href="#buildURL('app2:main')#">Application ##2 Main</a>
				</li>
				<li<cfif rc.action eq 'app2:main.another'> class="active"</cfif>>
					<a href="#buildURL('app2:main.another')#">Another Page</a>
				</li>
				<li<cfif rc.action eq 'app2:list.default'> class="active"</cfif>>
					<a href="#buildURL('app2:list')#">List Something</a>
				</li>
			</ul>
		</div>
		<div>#body#</div>
		<cfif $.currentUser().isSuperUser()>
			<div class="clearfix">
				<a href="#rc.$.globalConfig('context')#/plugins/#rc.pc.getDirectory()#/index.cfm?MuraFW1Action=admin:main.default&compactDisplay=true" rel="shadowbox;">Admin</a>
			</div>
		</cfif>
	</div>
</cfoutput>