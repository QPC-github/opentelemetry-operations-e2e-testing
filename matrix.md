# Matrix of supported scenarios in each ops repo

<table>
	<thead>
		<tr>
			<th>Repo Name</th>
			<th>Platform</th>
				<th>TestBasicPropagator</th>
				<th>TestBasicTrace</th>
				<th>TestComplexTrace</th>
				<th>TestResourceDetectionTrace</th>
		</tr>
	</thead>
	<tbody>
			<tr>
				<td rowspan=4>
					<a href="https://github.com/GoogleCloudPlatform/opentelemetry-operations-go">opentelemetry-operations-go</a>
				</td>
				<td>cloud-run</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
			</tr>
			<tr>
				<td>gce</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
			</tr>
			<tr>
				<td>gke</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
			</tr>
			<tr>
				<td>local</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:leftwards_arrow_with_hook:</td>
			</tr>
			<tr>
				<td rowspan=4>
					<a href="https://github.com/GoogleCloudPlatform/opentelemetry-operations-java">opentelemetry-operations-java</a>
				</td>
				<td>cloud-run</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
			</tr>
			<tr>
				<td>gce</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
			</tr>
			<tr>
				<td>gke</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
			</tr>
			<tr>
				<td>local</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:leftwards_arrow_with_hook:</td>
			</tr>
			<tr>
				<td rowspan=4>
					<a href="https://github.com/GoogleCloudPlatform/opentelemetry-operations-js">opentelemetry-operations-js</a>
				</td>
				<td>cloud-run</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
			</tr>
			<tr>
				<td>gce</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
			<tr>
				<td>gke</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
			<tr>
				<td>local</td>
					<td>:leftwards_arrow_with_hook:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
			<tr>
				<td rowspan=4>
					<a href="https://github.com/GoogleCloudPlatform/opentelemetry-operations-python">opentelemetry-operations-python</a>
				</td>
				<td>cloud-run</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
			<tr>
				<td>gce</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
			<tr>
				<td>gke</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
			<tr>
				<td>local</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td>:white_check_mark:</td>
					<td></td>
			</tr>
	</tbody>
</table>

- *:white_check_mark: means passing*
- *:leftwards_arrow_with_hook: means not implemented (skipped)*

## Regenerate

To regenerate this matrix, run from the repo root:
```sh
go run cmd/testmatrix/main.go --project-id=opentelemetry-ops-e2e > matrix.md
```

This will fetch recent Cloud Build logs to automatically update the statuses in this matrix.
